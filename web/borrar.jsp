<%-- 
    Document   : borrar
    Created on : 07-nov-2013, 9:05:19
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(idEntidadBancaria);
    entidadBancariaDAO.delete(idEntidadBancaria);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar</title>
    <h4>Ha sido borrada la Entidad <%=entidadBancaria.getCodigoEntidad()%> - <%=entidadBancaria.getNombre()%></h4>
    <a href="index.jsp">Return Index</a>
    </head>
    <body>
        
    </body>
</html>
