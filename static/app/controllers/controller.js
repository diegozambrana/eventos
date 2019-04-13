var myCtrl = function($scope, myService){
    $scope.create_client = function(client){
        console.log("create_client");
        var data = {
            'nombre': client.name,
            'ci': client.ci,
            'nit': client.nit
        }
        myService.addClient(data, 
            function(response){
                console.log(response);
                $('.modal').modal('hide');
            }, function(response){
                console.log(response);
            });
        $('.modal').modal('hide');
    }
    Date.prototype.yyyymmdd = function() {
        var yyyy = this.getFullYear().toString();
        var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based
        var dd  = this.getDate().toString();
        return yyyy + "-" + (mm[1]?mm:"0"+mm[0]) + "-" + (dd[1]?dd:"0"+dd[0]); // padding
    };
    
    var date_to_str = function(d) {
        var yyyy = d.getFullYear().toString();
        var mm = (d.getMonth()+1).toString(); // getMonth() is zero-based
        var dd  = d.getDate().toString();
        return yyyy + "-" + (mm[1]?mm:"0"+mm[0]) + "-" + (dd[1]?dd:"0"+dd[0]); // padding
    };


    $scope.add_fiesta = function(values){
        console.log("add_fiesta");
        console.log(values);
        d = new Date();
        console.log(values.inicio.yyyymmdd());
        console.log(values.fin.yyyymmdd());
        console.log(d.yyyymmdd())
        var data = {
            'lugar': values.lugar,
            'tipo_evento': values.tipo_evento,
            'inicio': date_to_str(values.inicio),
            'fin': date_to_str(values.fin),
            'tipo_fiesta': values.tipo_fiesta,
            'id_persona': values.id_persona,
            'costo_total': values.costo_total,
            'a_cuenta': values.a_cuenta,
            'saldo': values.costo_total - values.a_cuenta,
            'fecha': date_to_str(d) // today
        }
        console.log("data:");
        console.log(data);
        myService.addFiesta(data,
            function(response){
                console.log("success");
                console.log(response)
                $('.modal').modal('hide');
            },
            function(response){
                console.log("ERROR");
                console.log(response);
            });
    }
}
