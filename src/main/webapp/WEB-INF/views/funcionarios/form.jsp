<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RH SOLUCAO</title>
</head>
<body>
    <form:form action="${s:mvcUrl('FC#gravar').build()}" method="POST" commandName="funcionario">
        <div>
            <label>Nome</label>
            <input type="text" name="nome" />
            <form:errors path="nome"/>
        </div>
        <div>
            <label>Cargo</label>
            <input type="text" name="cargo"/>
        	<form:errors path="cargo"/>
        </div>
        <div>
            <label>Departamento</label>
            <input type="text" name="departamento" />
        	<form:errors path="departamento"/>
        </div>
        <button type="submit">Cadastrar</button>
    </form:form>
</body>
</html>