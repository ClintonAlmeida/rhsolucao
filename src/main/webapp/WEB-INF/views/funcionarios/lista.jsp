<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset=UTF-8>
    <title>RH SOLUCAO</title>
</head>
<body>
    <h1>Lista de Funcionarios</h1>
    <table>
        <tr>
            <td>Nome</td>
            <td>Cargo</td>
            <td>Departamento</td>
        </tr>
        
        <c:forEach items="${funcionarios }" var="funcionario">
            <tr>
                <td>${funcionario.nome}</td>
                <td>${funcionario.cargo}</td>
                <td>${funcionario.departamento}</td>
            </tr>
        </c:forEach>
               
    </table>
</body>
</html>