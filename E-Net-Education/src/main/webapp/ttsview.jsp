<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.staffsup.TimeT" %>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/ViewTTservlet"></jsp:include>

<div class="table-users">
   <div class="header">Student Contact Request</div>
   
   <table cellspacing="0">
      <tr>
         <th>Contact ID</th>
         <th>Name</th>
         <th>Email</th>
         <th>Massage</th>
         <th>Massage</th>
         
       
         
      </tr>
     
       <% ArrayList<TimeT> SVtimeTable = new ArrayList<TimeT>();
       SVtimeTable = (ArrayList<TimeT>)request.getAttribute("SVtimeTable"); %>
   
   <%for(int i=0 ; i<SVtimeTable.size();i++){
	  TimeT time =SVtimeTable.get(i); %> 

      <tr>
         
         <td><%=time.getExamno() %></td>
         <td><%=time.getModule() %></td>
         <td><%=time.getEdate() %></td>
         <td><%=time.getStime() %></td>
         <td><%=time.getTdue() %></td>
         
        
      </tr>

    <% }%>
   </table>
</div>

</body>
</html>