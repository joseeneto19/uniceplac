<%@page import="com.uniceplac.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.uniceplac.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

	int i = UsuarioDao.salvarUsuario(u);

	
	if(i > 0) {
		response.sendRedirect("veralunos.jsp");
	} else {
		response.sendRedirect("error.jsp");
	}


%>