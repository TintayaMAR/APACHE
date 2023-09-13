
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Notas"%>
<%
    ArrayList<Notas> lista = (ArrayList<Notas>) session.getAttribute("listaE");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        
        <div class="datos"">

            <h3>PRIMER PARCIAL TEM-742</h3>
            <h3>Nombre: Marta Maria Mamani Tintaya</h3>
            <h3>Carnet: 10029810 LP</h3>

        </div>
        <h1 style="text-align: center">GESTION DE PRODUCTOS</h1>
        <table align="CENTER" border="1">
            <button align="CENTER"><a href="MainController?op=nuevo"> NUEVO PRODUCTO</a></button> 
            <tr>
                <th>Id</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                
                
                <th></th>
            </tr>
            <%
                if(lista != null){
                    for(Notas item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getP1()%></td>
                <td><%= item.getP2()%></td>
                <td><%= item.getEf()%></td>
             
                <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a> </td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId()%>"
                       onclick = ' return confirm("Estas seguro de eliminar el registro ?");'>Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
