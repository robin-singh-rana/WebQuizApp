
<%@ page import="java.util.*" %>
<%@page import="java.sql.*"%>
<%@page import="database_handler.Create_connection" %>
<%@page import="question_handler.Question" %>
<%@ include file="Header.jsp"%><br>
<html>
<head>
<style type="text/css">
.container {
	width: 1090px;
	height: 250px;
	margin-top:90px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	padding-top: 80px;
	padding-left: 30px;
	
}
</style>
</head>


<%!
ArrayList list;
int term=0;
int qn=0;
%>

	<%
	//qn=0;
	list=(ArrayList)session.getAttribute("dbdata"); 
	if(qn>=5)
	{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Quiz Completed Successfully !');");
	out.println("location='CalculateResult.jsp';");
	out.println("</script>");
	}
	Question q=(Question)list.get(qn);
 	qn++;
	%>
	<div class="container">
	<form method="post" action="SaveData.jsp">
    <b style="font-size:1.2em;color:#00ff80;"><i>
    <%
    out.println("Question"+". "+q.getQuestion()); 
    //session.setAttribute("sno",q.getSno());
    %>
    </i></b>
		<table>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns1()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns1()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns2()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns2()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns3()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns3()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="radio" name="myradio" value="<%=q.getAns4()%>"></td><td><b style="font-size:1.2em;color:#fff;"><%=q.getAns4()%></b></td></tr>
          <tr><td style="text-align:right;"><input type="hidden" name="correct" value="<%=q.getCorrect()%>"></td></tr>
       	  <tr><td><input type="submit" value="Next Question"></td><td><input type="reset" value="Clear"></td></tr>

         </table>
     </form>
     </div><br><br>
     <%@ include file="Footer.jsp"%>
     <%
     
     %>
     
</html>

  
            
