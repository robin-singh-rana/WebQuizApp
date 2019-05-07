

<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="database_handler.Create_connection" %>
<%@page import="question_handler.Question" %>
<%@ include file="Header.jsp"%><br>

<html>
    <body background="im.jpg">

<% 
	int count=0;
    String atmt_ans=request.getParameter("myradio");
    String correct=request.getParameter("correct");
    
    Connection conn=Create_connection.getConnection();
    String query ="insert into answers values(?,?)";
    String e="";
    PreparedStatement st=conn.prepareStatement(query);
    e=atmt_ans;
    st.setString(1,e);
    st.setString(2,correct);
    st.executeUpdate();
    //count++;
     conn.close(); 
    	 
    %>
     <jsp:forward page="Logic2.jsp"/>
     <%@include file="Footer.jsp" %>
        
    </body>
</html>