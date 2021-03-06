<%-- 
    Document   : estaciones
    Created on : Feb 24, 2016, 11:50:22 AM
    Author     : jeisonOS
--%>

<%@page import="proyectomio.controlador.Controlador_Empleado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="proyectomio.controlador.Controlador_Estaciones"%>
<%@page import="proyectomio.modelo.Estacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="verificadorLogin.jsp" %>
<%
    
    Controlador_Estaciones controlador_estaciones = new Controlador_Estaciones();
    ArrayList <Estacion> estaciones = controlador_estaciones.get_estaciones();
    Controlador_Empleado controlador_empleado = new Controlador_Empleado();
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- TABLE STYLES-->
        <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
         <script>
            
            function seleccionar(id){
                
                document.getElementById('seleccion_id').innerHTML =  document.getElementById ( "id_estacion_" + id ).innerText;
                document.getElementById("seleccion_id").setAttribute("value",document.getElementById ( "id_estacion_" + id ).innerText);
                document.getElementById("seleccion_nombre").setAttribute("value",document.getElementById ( "nombre_" + id ).innerText);
                document.getElementById('seleccion_nombre').innerHTML = document.getElementById ( "nombre_" + id ).innerText ;
                var url = "editar_estacion.jsp?id_estacion=";
                var url_id = url.concat(document.getElementById("seleccion_id").getAttribute("value"));
                var url_borrar = "procesador_eliminar_estacion.jsp?nombre="+document.getElementById("seleccion_nombre").getAttribute("value");
                document.getElementById("boton_borrar").setAttribute("href",url_borrar);
                document.getElementById("boton_editar").setAttribute("href",url_id);
            }
            
        </script>
    </head>
    <body>
        
        <div class="panel panel-info">
                        <div class="panel-heading">
                            <b>Selecci&oacute;n</b>
                            
                            <a href="#" id="boton_borrar" name="boton_borrar" type="submit" class="btn btn-danger btn-xs" style="float: right;margin-right: 5px;">Borrar</a>
                            <a href="#" onclick="goEdicion();" id="boton_editar" name="boton_editar" type="submit" class="btn btn-primary btn-xs" style="float: right;margin-right: 5px;">Editar</a>
                            <a href="ingresar_estacion.jsp" type="submit" class="btn btn-success btn-xs" style="float: right;margin-right: 5px;">Adicionar</a>
                            
                        </div>
            <div class="panel-body">
                <table>
                    <tr><td align="right"><b>Identificaci&oacute;n:&nbsp;</b> </td><td  id="seleccion_id" value ="" name="seleccion_id"></td></tr>
                    <tr><td align="right"><b>Nombre:&nbsp;</b></td><td id="seleccion_nombre" name="seleccion_nombre"></td></tr>
                </table>
                
                
                
            </div>
        </div>
        
        <!-- Advanced Tables -->
        <div class="panel panel-primary">
            <div class="panel-heading">
                Estaciones
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Identificaci&oacute;n</th>
                                <th>Nombres</th>
                                <th>Direcci&oacute;n</th>
                                <th>ID del empleado a cargo</th>
                                <th>Nombre del empleado a cargo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for(int i = 0; i < estaciones.size(); i++){
                                    
                                    out.println("<tr class=\"odd gradeX\">");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" id=\"id_estacion_" + i + "\">" + estaciones.get(i).getId_estacion()+ "</td>");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" id=\"nombre_" + i + "\">" + estaciones.get(i).getNombre()+ "</td>");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" id=\"direccion_" + i + "\">" + estaciones.get(i).getDireccion()+ "</td>");                                 
                                    out.println("<td onClick=\"seleccionar(" + i + ");\">" + controlador_empleado.get_empleados(Integer.valueOf(estaciones.get(i).getId_empleado_a_cargo())).get(0).getId_empleado()+ "</td>");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" class=\"center\">" + controlador_empleado.get_empleados(Integer.valueOf(estaciones.get(i).getId_empleado_a_cargo())).get(0).getNombres() + " " + controlador_empleado.get_empleados(Integer.valueOf(estaciones.get(i).getId_empleado_a_cargo())).get(0).getApellidos()+ "</td>");
                                    out.println("</tr>");
                                    
                                };
                            
                            %>
                            
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <!--End Advanced Tables -->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
     <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
            function goEdicion() {
                      if (document.getElementById("seleccion_id").getAttribute("value")=="") {
                         alert("No ha seleccionado una estacion de la tabla");
                     }                        };
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>
    </body>
</html>
