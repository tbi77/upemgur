<%-- 
    Document   : invalidLogin
    Created on : 8 mars 2015, 14:28:24
    Author     : Jon
--%>

<%@ page language="java" 
         contentType="text/html; charset=windows-1256" 
         pageEncoding="windows-1256" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
        <title>Invalid Login</title>
        <link href="css/style.css" rel="stylesheet" />

    </head> 

    <body>

    <header>
        <div class="navbar navbar-default navbar-static-top">
            <br/>
            <div class="navbar-header">
                <a class="navbar-brand" href="faces/index.xhtml"><img src="img/logo.png" alt="logo"/></a>
            </div>          
        </div>
    </header>

    <br/>
    <center>
        Adresse �lectronique ou mot de passe incorrecte <br/>
        Vous pouvez vous connecter en utilisant l�adresse �lectronique et le mot de passe associ�s � votre compte. Assurez-vous qu�ils soient tap�s correctement.
    </center>

    <div id="login2">
        <h1>Connexion</h1>
        <form action="LoginServlet">
            <input type="email" placeholder="Email ou pseudo" name="un"/>
            <input type="password" placeholder="Mot de passe" name="pw"/>
            <input type="submit" value="Se connecter" />
        </form>
    </div>

    </body> 
</html>
