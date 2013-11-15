<%-- 
    Document   : nuevo
    Created on : 07-nov-2013, 10:40:07
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%>
<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    EntidadBancaria entidadBancaria = new EntidadBancaria();

    String codigoEntidadBancaria = entidadBancaria.getCodigoEntidad();
    if (codigoEntidadBancaria == null) {
        codigoEntidadBancaria = "";
    }
    String nombreEntidadBancaria = entidadBancaria.getNombre();
    if (codigoEntidadBancaria == null) {
        nombreEntidadBancaria = "";
    }
    String cifEntidadBancaria = entidadBancaria.getCif();
    if (cifEntidadBancaria == null) {
        cifEntidadBancaria = "";
    }
    
    TipoEntidadBancaria tipoEntidadBancaria = entidadBancaria.getTipoEntidadBancaria();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva entidad</title>
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <h2> Crear nueva Entidad Bancaria </h2>
        <form action="insert.jsp" class="form-horizontal" style="margin:20px 0 0 15px;">
            <div class="control-group">
                <label class="control-label" for="idEntidadBancaria">Id:</label>
                <div class="controls">
                    <input type="text" name="idEntidadBancaria" id="idEntidadBancaria"/>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="codigoEntidadBancaria">Codigo Entidad:</label>
                <div class="controls">
                    <input type="text" name="codigoEntidadBancaria" id="codigoEntidadBancaria" value="<%= codigoEntidadBancaria%> " />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="nombreEntidadBancaria">Nombre Entidad:</label>
                <div class="controls">
                    <input type="text" name="nombreEntidadBancaria" id="nombreEntidadBancaria" value="<%= nombreEntidadBancaria%> " />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="cifEntidadBancaria">CIF:</label>
                <div class="controls">
                    <input type="text" name="cifEntidadBancaria" id="cifEntidadBancaria" value="<%= cifEntidadBancaria%> " />
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
                    <button type="submit" class="btn btn-success">Insertar</button>
                </div>
            </div>
        </form>
    </body>
</html>
