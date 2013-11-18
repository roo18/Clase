<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%><%@page import="java.util.List"%><%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%><%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%><%@page import="com.fasterxml.jackson.databind.ObjectMapper"%><%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    String nombre ="%"+ request.getParameter("nombre")+"%";
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findByNombre(nombre);
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadesBancarias);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
%>