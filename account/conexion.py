#!/usr/bin/python
import psycopg2
import sys
from decimal import Decimal

class Conexion:
    def __init__(self):
        self.conn = None
        self.cursor = None
        self.funciones = None
        self.tipos_eventos = None
        self.lugares = None
        self.pid = None
        self.user = None
        self.roles = None
        self.ui = None
        self.sesion = None
        self.tipos_eventos = None
        self.tipos_fiestas = None
        self.database = 'eventos'
        self.user_db = 'myuser'
        self.password_db = "mypass"
    
    def set_sesion(self):
        id_user = self.user[0]
        query = "INSERT INTO sesion (id_usuario,pid,fecha,activo) \
                 VALUES ("+ str(id_user) + "," + str(self.pid)\
                 + ",CURRENT_DATE, true) RETURNING id_usuario, pid, fecha;"
        # query = "SELECT * FROM usuario WHERE " \
        self.cursor.execute(query)
        self.conn.commit()
        self.sesion = self.cursor.fetchone()
        print "sesion: %s" % ",".join(map(lambda x: str(x), self.sesion))
        
    def get_rol(self):
        query = "SELECT r.id_rol, r.nombre_rol FROM  usuario_rol ur ,rol r \
                 WHERE r.id_rol=ur.id_rol and ur.id_usuario="+ str(self.user[0]) +";"
        self.cursor.execute(query)
        self.conn.commit()
        self.roles = self.cursor.fetchall()
    
    def get_functiones(self):
        r = ",".join(map(lambda x: str(x[0]), self.roles))    
        query = "SELECT DISTINCT f.id_funcion, f.nombre_funcion\
                 FROM funcion f ,rol_funcion rf\
                 WHERE rf.id_funcion=f.id_funcion\
                 AND rf.id_rol IN (" + r + ") ;" 
        self.cursor.execute(query)
        self.conn.commit()
        self.funciones = self.cursor.fetchall()

    def get_ui(self):
        f = ",".join(map(lambda x: str(x[0]), self.funciones))
        query = "SELECT DISTINCT u.id_ui, u.nombre_ui, u.valor, u.activo\
                 FROM ui u ,funcion_ui fu\
                 WHERE u.id_ui=fu.id_ui and fu.id_funcion IN (" + f + ") ;"
        self.cursor.execute(query)
        self.conn.commit()
        self.ui = self.cursor.fetchall()
    
    def start(self):
        self.conn = psycopg2.connect(host='localhost', dbname='eventos', 
                                     user=self.user_db,
                                     password=self.password_db)
        self.cursor = self.conn.cursor()

    def init(self):
        self.conn = psycopg2.connect(host='localhost', dbname='eventos', 
                                     user=self.user_db,
                                     password=self.password_db)
        self.cursor = self.conn.cursor()
        print "Connected!\n"
        self.pid = self.conn.get_backend_pid()
        self.lugares = self.get_lugares()
        self.tipos_eventos = self.get_tipo_evento()
        self.tipos_fiestas = self.get_tipo_fiestas()
        # print "PID: %s" % pid
    
    def close(self):
        self.conn.close()
        self.cursor.close()

    def login(self, data):
        self.init()
        query = "SELECT * FROM usuario WHERE " \
                + "NOMBRE_USUARIO='" + data['username'] \
                + "' AND PASSWORD='" + data['password'] + "';"
        self.cursor.execute(query)
        self.user = self.cursor.fetchone()
        if self.user is not None:
            self.get_rol()
            self.get_functiones()
            self.get_ui()
            self.set_sesion()
            # self.logout()
            return True
        else:
            return False
            self.close()
            print "error al iniciar sesion"
    
    def logout(self):
        query = "UPDATE sesion SET activo=False\
                WHERE id_usuario=" + str(self.sesion[0]) +\
                " AND pid=" + str(self.sesion[1]) +\
                " AND fecha='" + str(self.sesion[2]) + "';"
        self.cursor.execute(query)
        self.conn.commit()
        self.close()
        self.user = None

    def get_lugares(self):
        print "get_lugares()"
        query = "SELECT * FROM lugar;"
        self.cursor.execute(query)
        self.conn.commit()
        lugares = self.cursor.fetchall()
        print lugares
        mlist = map(lambda (x,y,z): (int(x),y,z), lugares)
        print mlist
        return mlist
    
    def get_tipo_evento(self):
        print "get_tipo_evento"
        query = "SELECT * FROM tipo_evento;"
        self.cursor.execute(query)
        self.conn.commit()
        tipos_eventos = map(lambda (x,y): (int(x),y), self.cursor.fetchall())
        return tipos_eventos

    def get_tipo_fiestas(self):
        print "get_tipo_fiestas"
        query = "SELECT * FROM tipo_fiesta;"
        self.cursor.execute(query)
        self.conn.commit()
        tipos_fiestas = map(lambda (x,y): (int(x),y), self.cursor.fetchall())
        return tipos_fiestas

    def registrar_evento(self, data):
        print "registrar_evento"
        query = "INSERT INTO evento (id_lugar, id_tipo_evento,\
                fecha_hora_inicio, fecha_hora_fin) VALUES (%s, %s, '%s', '%s') \
                RETURNING id_evento;" \
                % (data['id_lugar'], data['id_tipo_evento'], 
                   data['fecha_hora_inicio'], data['fecha_hora_fin'])
        self.cursor.execute(query)
        self.conn.commit()
        id_evento = self.cursor.fetchone()
        return id_evento[0]

    def registrar_fiesta(self, data):
        id_evento = self.registrar_evento(data)
        query = "INSERT INTO fiesta (id_evento, id_tipo_fiesta)\
                VALUES (%s, %s) RETURNING id_evento;"\
                % (str(id_evento),str(data['tipo_fiesta']))
        self.cursor.execute(query)
        self.conn.commit()
        res = self.cursor.fetchone()
        return res

    def registrar_persona(self, data):
        print "registrar_persona()"
        query = "INSERT INTO persona(nombre, ci) VALUES ('%s', %s) RETURNING\
                id_persona;" % (data['nombre'], data['ci'])
        self.cursor.execute(query)
        self.conn.commit()
        id_persona = self.cursor.fetchone()
        print "id_persona: > %s" % str(id_persona)
        return id_persona[0]

    def registrar_cliente(self, data):
        print "registrar_cliente()"
        id_persona = self.registrar_persona(data)
        query = "INSERT INTO cliente (id_persona, nit) VALUES (%s, %s) RETURNING\
                id_persona;" % (str(id_persona), str(data['nit']))
        self.cursor.execute(query)
        self.conn.commit()
        res = self.cursor.fetchone()
        print "cliente: %s"  % str(res)
        return res is not None

    def registrar_contrato(self, data):
        query = "INSERT INTO contrato (id_evento, id_persona, costo_total,\
                a_cuenta, saldo, fecha) VALUES (%s, %s, %s, %s, %s, '%s') \
                RETURNING id_evento, id_persona;"\
                % (str(data['id_evento']), str(data['id_persona']),\
                str(data['costo_total']), str(data['a_cuenta']),\
                str(data['saldo']), data['fecha'])
        print(query)
        self.cursor.execute(query)
        self.conn.commit()
        res = self.cursor.fetchone()
        return res is not None
    
    def get_personas(self):
        query = "SELECT * FROM persona"
        self.cursor.execute(query)
        self.conn.commit()
        personas = map(lambda (x,y,z): (int(x),y,z), self.cursor.fetchall())
        return personas


    def get_contrato(self, data):
        query = "SELECT * FROM contrato WHERE id_evento=%s AND id_persona=%s"\
                % (str(data['id_evento']), str(data['id_persona']))
        self.cursor.execute(query)
        self.conn.commit()
        contrato = self.cursor.fetchone()
        return contrato

    def actualizar_contrato(self, data):
        contrato = self.get_contrato(data)
        print "contrato: %s" % str(contrato)
        costo_total = contrato[2]
        a_cuenta = contrato[3]
        a_cuenta = a_cuenta + data['pago']
        saldo = costo_total - a_cuenta
        query = "UPDATE contrato SET a_cuenta=%s, saldo=%s WHERE id_evento=%s\
                AND id_persona=%s RETURNING id_evento, id_evento;"\
                % (str(a_cuenta), str(saldo), str(data['id_evento']),\
                str(data['id_persona']))
        self.cursor.execute(query)
        self.conn.commit()
        contrato = self.cursor.fetchone()
        return contrato is not None
