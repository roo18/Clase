<%@page import="com.fpmislata.banco.negocio.TipoEntidadBancaria"%><%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%><%@page import="com.fasterxml.jackson.databind.ObjectMapper"%><%
    EntidadBancaria entidadBancaria = new EntidadBancaria(23, "C45", "Bankia", "C8795848",TipoEntidadBancaria.BANCO);
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadBancaria);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
%>
