<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%><%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%><%@page import="com.fasterxml.jackson.databind.ObjectMapper"%><%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    Integer idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    entidadBancariaDAO.delete(idEntidadBancaria);
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(null);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
%>
