<%@page import="java.util.List" %>
<%@page import="com.emergentes.modelo.Producto" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Productos</title>
    </head>
    <body>
    <center>
        <h1>Lista de Productos</h1>
        <p><a href="MainController?op=nuevo">Nuevo Producto</a></p>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th></th>
            </tr>
            
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.producto}</td>
                <td>${item.precio}</td>
                <td>${item.cantidad}</td>
                <td>
                    <a href="MainController?op=editar&id=${item.id}">
                        Editar</a>
                </td>
                <td>
                    <a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Esta seguro ???'))">Eliminar</a>
                </td>
            </tr>
            </c:forEach>
        </table>
        </center>
    </body>
</html>
