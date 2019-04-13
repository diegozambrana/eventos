var myService = function($http){
    function _addClient(data, callback, error){
        var cb = callback || angular.noop;
        var err = error || angular.noop;
        var url = "/api/registrar_cliente/";
        $http.post(url, data).then(function(response){
            return cb(response);
        }, function(response){
            return err(response);
        });
    }

    function _addFiesta(data, callback, error){
        var cb = callback || angular.noop;
        var err = error || angular.noop;
        var url = "/api/registrar_fiesta/";
        $http.post(url, data).then(function(response){
            return cb(response);
        }, function(response){
            return err(response);
        });
    }

    return {
        addClient: _addClient,
        addFiesta: _addFiesta
    }
}
