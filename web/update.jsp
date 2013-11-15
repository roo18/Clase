<%-- 
    Document   : update
    Created on : 08-nov-2013, 9:49:33
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%>
<%@page import="com.fpmislata.banco.negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    String codigoEntidadBancaria = request.getParameter("codigoEntidadBancaria");
    String nombreEntidadBancaria = request.getParameter("nombreEntidadBancaria");
    String cifEntidadBancaria = request.getParameter("cifEntidadBancaria");
    TipoEntidadBancaria tipoEntidadBancaria = TipoEntidadBancaria.valueOf(request.getParameter("tipoEntidadBancaria"));
    
        EntidadBancaria entidadBancaria = new EntidadBancaria();
        entidadBancaria.setIdEntidadBancaria(idEntidadBancaria);
        entidadBancaria.setCodigoEntidad(codigoEntidadBancaria);
        entidadBancaria.setNombre(nombreEntidadBancaria);
        entidadBancaria.setCif(cifEntidadBancaria);
        entidadBancaria.setTipoEntidadBancaria(tipoEntidadBancaria);
        
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    entidadBancariaDAO.update(entidadBancaria);
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <h2>Actualizado</h2>
        <a href="index.jsp">Return Index</a>
    </body>
</html>
