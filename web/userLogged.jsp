<%@ page language="java" 
         contentType="text/html; charset=windows-1256" 
         pageEncoding="windows-1256" 
         import="fr.upem.connection.UserBean" 
         %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd"> 

<html> 
    <head> 
        <meta http-equiv="Content-Type" 
              content="text/html; charset=windows-1256"> 
        <title> Welcome </title> 
    </head> 

    <body> 
        <center> 
            <% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%> 
            Welcome <%= currentUser.getUserpseudo()%> 
        </center> 

    </body> 

</html>