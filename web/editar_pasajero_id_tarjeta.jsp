<%-- 
    Document   : ingresar_uso_tarjeta
    Created on : 27-feb-2016, 23:00:18
    Author     : Alejandro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="proyectomio.controlador.Controlador_Pasajero"%>
<%@page import="proyectomio.modelo.Pasajero"%>
<%@page import="proyectomio.controlador.Controlador_Tarjeta"%>

<%@page import="proyectomio.modelo.Ruta"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Modificar datos de pasajero</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
       <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="start/index.jsp">MIO</a> 
                </div>
                <div style="color: white;
                     padding: 15px 50px 5px 50px;
                     float: right;
                     font-size: 16px;"> Bienvenido &nbsp; </div>
                    
            </nav>   
        </div>
    <br></br>
        <!-- /. WRAPPER  -->
    <div class="panel panel-primary" style="margin: auto;width:70%; margin-top: 10%;">
        <div class ="panel-heading">
    Modificar datos de usuario<br>
        </div>
         <div class="panel-body"  >
        <form name = "form" id = "form" action="procesador_editar_empleado_tarjeta.jsp" class="form-group" method="post" >
           
           <label for="id_tarjeta">
              N&uacute;mero de la tarjeta:
               </label>
               <input type="text" name="id_tarjeta" pattern="[0-9]{4,}" id="id_tarjeta" class ="form-control" required="required">
               </input>
                   
       
                
              

             
                  
                   <br></br>
                     <center>
                   <input type="submit" class="btn btn-primary" value="Modificar datos"></center>
                                
           
          
     </form>
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
