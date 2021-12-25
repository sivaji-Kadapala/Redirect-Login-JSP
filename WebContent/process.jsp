<%-----
This page is used to validate the user, in other words he/she is a registered user or not. For validation we use a database table "emp",
 using this table we check whether user records are in the database table or not. If records are not found then a error message is generated 
 and the page is redirected to the home ("home.jsp") page, else if a record is matched then we either can redirect them to another page or we
  can simply display a confirmation message that "you are successfully logged in". In this article we simply display a confirmation message or display after record matching.

We also include a new page named "logout.html", this page is included when the user data is matched. This page provides a "logout" button.
 --%>
<%@ page language="java" import="java.sql.*"%>

<%

    String name = request.getParameter("uname");

    String pass = request.getParameter("upass");

    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","#Sivaji68");

        PreparedStatement ps = con.prepareStatement("select * from emp where uname=? and upass=?");

        ps.setString(1, name);

        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        int x = 0;

        while (rs.next()) {

            if (rs.getString(1).equals(name) && rs.getString(3).equals(pass)) {

                x = 1;

            } else {

                x = 2;

            }

        }

        if (x == 1) {

 

%>

<jsp:include page="logout.html"/>

<%                HttpSession s = request.getSession();

    out.println("<center><h1 style='color:green'>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>

<jsp:include page="home.jsp"/>

<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>