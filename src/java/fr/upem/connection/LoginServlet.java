/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.connection;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jon
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            UserBean user = new UserBean();
            user.setUserEmail(request.getParameter("un"));
            user.setPassword(request.getParameter("pw"));
            user = UserDAO.login(user);
            if (user.isValid()) {
                HttpSession session = request.getSession(true);
                session.setAttribute("currentSessionUser", user);
                response.sendRedirect("welcome.jsp");
            }
         
            else 
                response.sendRedirect("invalidLogin.jsp");

        } catch (Throwable theException) { 
            System.out.println(theException); 
        }
    }

    
}