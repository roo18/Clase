<%@page import="com.fpmislata.banco.negocio.TipoEntidadBancaria"%><%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%><%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%><%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%><%@page import="com.fasterxml.jackson.databind.ObjectMapper"%><%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    Integer idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    String codigoEntidadBancaria = request.getParameter("codigoEntidadBancaria");
    String nombreEntidadBancaria = request.getParameter("nombreEntidadBancaria");
    String cifEntidadBancaria = request.getParameter("cifEntidadBancaria");
    TipoEntidadBancaria tipoEntidadBancaria = TipoEntidadBancaria.valueOf(request.getParameter("tipoEntidadBancaria"));
    EntidadBancaria entidadBancaria = new EntidadBancaria(idEntidadBancaria,codigoEntidadBancaria,nombreEntidadBancaria,cifEntidadBancaria,tipoEntidadBancaria);
    entidadBancariaDAO.insert(entidadBancaria);
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(null);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
%>