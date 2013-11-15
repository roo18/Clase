<%-- 
    Document   : viewforupdate
    Created on : 08-nov-2013, 9:47:44
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(idEntidadBancaria);
    
    TipoEntidadBancaria tipoEntidadBancaria = entidadBancaria.getTipoEntidadBancaria();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <h2>Actualizar Entidad Bancaria</h2>
        <form action="update.jsp" class="form-horizontal" style="margin:20px 0 0 15px;">
            <div class="control-group">
                <label class="control-label" for="idEntidadBancaria">Id:</label>
                <div class="controls">
                    <input type="text" name="idEntidadBancaria" id="idEntidadBancaria" value="<%=entidadBancaria.getIdEntidadBancaria()%>" readonly />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="codigoEntidadBancaria">Codigo Entidad:</label>
                <div class="controls">
                    <input type="text" name="codigoEntidadBancaria" id="codigoEntidadBancaria" value="<%=entidadBancaria.getCodigoEntidad() %>" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="nombreEntidadBancaria">Nombre Entidad:</label>
                <div class="controls">
                    <input type="text" name="nombreEntidadBancaria" id="nombreEntidadBancaria" value="<%=entidadBancaria.getNombre() %>" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cifEntidadBancaria">CIF:</label>
                <div class="controls">
                    <input type="text" name="cifEntidadBancaria" id="cifEntidadBancaria" value="<%=entidadBancaria.getCif() %>" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cifEntidadBancaria">Tipo Entidad:</label>
                <div class="controls">
                    <select name="tipoEntidadBancaria" id="tipoEntidadBancaria">
                        <option value="BANCO" <% if(tipoEntidadBancaria == TipoEntidadBancaria.BANCO){out.print("selected");} %> >BANCO</option>
                        <option value="CAJADEAHORRO" <% if(tipoEntidadBancaria == TipoEntidadBancaria.CAJADEAHORRO){out.print("selected");} %> >CAJA DE AHORROS</option>
                        <option value="COOPERATIVASDECREDITO" <% if(tipoEntidadBancaria == TipoEntidadBancaria.COOPERATIVASDECREDITO){out.print("selected");} %> >COOPERATIVA DE CREDITO</option>
                        <option value="ESTABLECIMIENTOSFINACIEROSDECREDITO" <% if(tipoEntidadBancaria == TipoEntidadBancaria.ESTABLECIMIENTOSFINACIEROSDECREDITO){out.print("selected");} %> >ESTABLECIMIENTOS FINANCIEROS DE CREDITO</option>                
                    </select>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-success">Actualizar</button>
                </div>
            </div>
        </form>
    </body>
</html>
