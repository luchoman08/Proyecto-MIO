
<%@page import="proyectomio.controlador.Controlador_Tarjeta"%>
<%@page import="proyectomio.controlador.Controlador_Pasajero"%>
<%

    String id_tarjeta = request.getParameter("id_tarjeta");
    
    Controlador_Tarjeta c_tarjeta = new Controlador_Tarjeta();
    Controlador_Pasajero c_pasajero = new Controlador_Pasajero();
    
    int resultado = 0;
    out.print(c_pasajero.get_pasajerosTarjeta(Integer.valueOf(id_tarjeta)).size());
    if(c_pasajero.get_pasajerosTarjeta(Integer.valueOf(id_tarjeta)).size() == 1){
        
        int saldo = c_tarjeta.get_una_tarjeta(Integer.valueOf(id_tarjeta)).get(0).getSaldo();
        out.print(saldo);
        
    }else{
        /*
        if(c_tarjeta.get_una_tarjeta(Integer.valueOf(id_tarjeta)).get(0).getSaldo() == 0){
        
        }
        
        int saldo = c_tarjeta.get_una_tarjeta(Integer.valueOf(id_tarjeta)).get(0).getSaldo();
        out.print(saldo);*/
        
    }
    

%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title></title>
        <!-- BOOTSTRAP STYLES-->
        <link href="../assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="../assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="../assets/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />


    </head>
    <body>



        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">MIO</a> 
                </div>
                <div style="color: white;
                     padding: 15px 50px 5px 50px;
                     float: right;
                     font-size: 16px;"> </div>
            </nav>   
        </div>
        <!-- /. WRAPPER  -->
        <div class="panel panel-primary" style="margin: auto;width: 50%; margin-top: 10%;">
            <div class ="panel-heading">
                Abordar
            </div>
            <div class="panel-body">
                
            </div>
        </div>



        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>


    </body>
</html>
