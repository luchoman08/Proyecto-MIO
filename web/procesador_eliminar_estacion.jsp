<%-- 
    Document   : procesador_eliminar_estacion
    Created on : 29-feb-2016, 12:19:07
    Author     : Alejandro
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="proyectomio.modelo.Estacion"%>
<%@page import="proyectomio.controlador.Controlador_Estaciones"%>
<%@ include file="verificadorLogin.jsp" %>
<%
Controlador_Estaciones uncontrolador = new Controlador_Estaciones();
       Estacion unEmpleado = new Estacion();
    
      String nombre_estacion_eliminar = request.getParameter("nombre");
           
       int resultado = uncontrolador.eliminar_estacion(nombre_estacion_eliminar);
       %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Procesador de eliminar una estacion</title>
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
    <div class="<% 
         if(resultado==0){      
          out.print("panel panel-primary");
                   }
         else{
             out.print("panel panel-danger");
         }

          %>">
        <div class ="panel-heading">
            <% if(resultado ==0){
        out.print("Mensaje");
            }
            else
            {
                out.print("Error");
            }%>
        </div>
            <div class="panel-body">
                
      
        <center>
    <h5>
 
    <%
        
       
       
   
       switch(resultado){
           case 0: out.println("la estaci&oacute;n con el nombre "+ nombre_estacion_eliminar +" ha sido eliminada");break;
           case 1: out.println("la estaci&oacute;n con el nombre "+ nombre_estacion_eliminar +" no existe en nuestros registros");break;
           default: out.println("Se ha generado un error inesperado en el programa");
       }
       
    
    %>
     <br></br>
        <button class="<%
            if(resultado==0){
                out.print("btn btn-primary");
            }
            else
            {
                out.print("btn btn-danger");
            }%>" onclick="goBack()">Volver</button> </center>
  <script>
function goBack() {
    <%if(resultado == 0) {%>
       location.href="<%out.print("estaciones.jsp");%> "<%}
    else{
    out.print("window.history.back()");
    }%>;
    
    
}
</script>  
        </h5>
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

