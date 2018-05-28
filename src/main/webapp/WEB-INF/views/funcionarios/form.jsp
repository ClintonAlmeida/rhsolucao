<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/resourcers/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<title>RH SOLUCAO</title>
</head>
<body>
	<form:form action="${s:mvcUrl('FC#gravar').build()}" method="POST"
		commandName="funcionario">
		<div>
			<label>Nome</label>
			<form:input path="nome" />
			<form:errors path="nome" />
		</div>
		<div>
			<label>Cargo</label>
			<form:input path="cargo" />
			<form:errors path="cargo" />
		</div>
		<div>
			<label>Departamento</label>
			<form:input path="departamento" />
			<form:errors path="departamento" />
		</div>
		<div>
			<label>Data de Contratacao</label>
			<form:input path="dataContratacao" />
			<form:errors path="dataContratacao" />
		</div>

		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>