<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="model.Pessoa" %>
     <%@page import="dao.ListarPessoasDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diretores Registrados</title>
</head>
<body>
<form action="/Cinema-Luiz_Carlos/index"><input type="submit" value="inicio"></form>
<h1>Lista de todos os Diretores Registrados</h1>
<table border=1>
<tr><td>Todas as Diretores</td></tr>
<% ArrayList<Pessoa> listarPessoas = (ArrayList<Pessoa>) request.getAttribute("listarDiretores"); %>
<% 	for (int i = 0; i < listarPessoas.size(); i++){ 
		out.println("<tr><td>" + "<a href='/Cinema-Luiz_Carlos/detalhaPessoa?idpessoa=" + listarPessoas.get(i).getIdpessoa() +"'>" +listarPessoas.get(i).getNomepessoa() +"</a></tr>");}
 %>
</table>
</body>
</html>