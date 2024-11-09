<%@page import="com.uniceplac.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.uniceplac.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UsuarioDao.deleteUsuario(u);
response.sendRedirect("veralunos.jsp");



%>