
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="database_handler.Create_connection" %>
<%@page import="question_handler.Question" %>
<html>
<%@include file="Header.jsp" %>
 <title>Quiz</title>
    <body background="im.jpg">
    <b>
        <a href="choice.jsp"><input type="button" value="Home" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px;margin-right:30px; "></a>
    <a href="viewjavaresult.jsp"><input type="button" value="View Result" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px; "> </a><br><br><br>
 <%
    //String s=(String)session.getAttribute("email");
    Connection conn=Create_connection.getConnection();
    //String query2="select * from java_answers where email=?";
    //PreparedStatement ps=conn.prepareStatement(query2);
    PreparedStatement ps2=conn.prepareStatement("select * from quiz_questions");
    /*ps.setString(1,s);
    ResultSet rs=ps.executeQuery();
    
    if ( rs.next()){
        out.println("Not allowed. You have already given the test.");
        conn.close();
    }
	else
	{*/
	ResultSet rs2=ps2.executeQuery();
	java.util.ArrayList list=new java.util.ArrayList(); 
	list.clear();
	Question q2=new Question();
	while(rs2.next()) {
		Question q=new Question();
		//q.setSno(rs2.getInt(1));
		q.setQuestion(rs2.getString(1));
		q.setAns1(rs2.getString(2));
		q.setAns2(rs2.getString(3));
		q.setAns3(rs2.getString(4));
		q.setAns4(rs2.getString(5));
		q.setCorrect(rs2.getString(6));
		list.add(q);
		//q.setSno(rs2.getInt(1));
		q2.setQuestion(rs2.getString(1));
		q2.setAns1(rs2.getString(2));
		q2.setAns2(rs2.getString(3));
		q2.setAns3(rs2.getString(4));
		q2.setAns4(rs2.getString(5));
		q2.setCorrect(rs2.getString(6));
	}
	list.add(q2);
	session.setAttribute("dbdata",list);
	conn.close(); 
	%>
	 <jsp:forward page="Logic2.jsp"></jsp:forward>
	<%
	//}
    %>
   
    </b>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="Footer.jsp" %>
</body>
</html>