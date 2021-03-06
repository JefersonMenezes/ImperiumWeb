<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <!-- cria o DAO -->
          <jsp:useBean id="dao" class="br.com.flame.dao.UsuarioDao"/>

          <table>
              <!-- percorre contatos montando as linhas da tabela -->
              <c:forEach var="usuario" items="${dao.lista}">
                  <tr>
                      <td>${usuario.id}</td>
                      <td>${usuario.nome}</td>
                      <td>${usuario.email}</td>
                      <td>${usuario.login}</td>
                      <td>${usuario.senha}</td>
                      <td>${usuario.ativo}</td>
                  </tr>
              </c:forEach>
          </table>
</body>
</html>