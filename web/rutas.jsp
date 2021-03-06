<%-- 
    Document   : ruta
    Created on : Feb 24, 2016, 11:50:36 AM
    Author     : jeisonOS
--%>

<%@page import="proyectomio.modelo.Ruta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="proyectomio.controlador.Controlador_Rutas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="verificadorLogin.jsp" %>
<%
    
    Controlador_Rutas controlador_rutas = new Controlador_Rutas();
    ArrayList <Ruta> rutas = controlador_rutas.get_rutas();
    
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
                
                document.getElementById('seleccion_id').innerHTML =  document.getElementById ( "id_ruta_" + id ).innerText;
                document.getElementById("seleccion_id").setAttribute("value",document.getElementById ( "id_ruta_" + id ).innerText);
                document.getElementById("seleccion_nombre").setAttribute("value",document.getElementById ( "nombre_" + id ).innerText);
                document.getElementById('seleccion_nombre').innerHTML = document.getElementById ( "nombre_" + id ).innerText ;
                   var editar_completo = "editar_ruta.jsp?id_ruta=";
                   var eliminar_con_id = "procesador_eliminar_ruta.jsp?nombre="+document.getElementById("seleccion_nombre").getAttribute("value");
                var editar_con_id=editar_completo.concat(document.getElementById("seleccion_nombre").getAttribute("value"));
                document.getElementById("boton_editar").setAttribute("href",editar_con_id);
                document.getElementById("boton_eliminar").setAttribute("href",eliminar_con_id);
            }
            
        </script>
        
    </head>
    <body>
        
        <div class="panel panel-info">
                        <div class="panel-heading">
                            <b>Selecci&oacute;n</b>
                            
                            <a href="#" id="boton_eliminar" name="boton_eliminar" type="submit" class="btn btn-danger btn-xs" style="float: right;margin-right: 5px;">Borrar</a>
                            <a href="#" id="boton_editar" name="boton_editar" onclick="goEdicion();"type="submit" class="btn btn-primary btn-xs" style="float: right;margin-right: 5px;">Editar</a>
                            <a href="ingresar_ruta.jsp" type="submit" class="btn btn-success btn-xs" style="float: right;margin-right: 5px;">Adicionar</a>
                            
                        </div>
            <div class="panel-body">
                <table>
                    <tr><td align="right"><b>Identificaci&oacute;n:&nbsp;</b> </td><td value ="" id="seleccion_id" name="seleccion_id"></td></tr>
                    <tr><td align="right"><b>Nombre:&nbsp;</b></td><td id="seleccion_nombre" value="" name="seleccion_nombre"></td></tr>
                    
                </table>
                
                
                
            </div>
        </div>
        
        <!-- Advanced Tables -->
        <div class="panel panel-primary">
            <div class="panel-heading">
                Rutas
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr>
                                <th>Identificaci&oacute;n</th>
                                <th>Nombre</th>
                                <th>Descripci&oacute;n</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for(int i = 0; i < rutas.size(); i++){
                                    
                                    out.println("<tr class=\"odd gradeX\">");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" id=\"id_ruta_" + i + "\">" + rutas.get(i).getId_ruta()+ "</td>");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" id=\"nombre_" + i + "\">" + rutas.get(i).getNombre()+ "</td>");
                                    out.println("<td onClick=\"seleccionar(" + i + ");\" class=\"center\">" + rutas.get(i).getDescripcion()+ "</td>");
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
                         alert("No ha seleccionado una ruta de la tabla");
                     }                        };
        </script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>
    </body>
</html>
