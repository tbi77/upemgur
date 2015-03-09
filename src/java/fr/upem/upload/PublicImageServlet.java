/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.upload;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jon
 */
public class PublicImageServlet extends HttpServlet {

    /*
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PublicImageServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PublicImageServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    */
       
    /*
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        Path p = Paths.get("G:/up/public");
        //StringBuilder data = new StringBuilder();
        DirectoryStream<Path> stream = Files.newDirectoryStream(p);
        PrintWriter out = response.getWriter();
        try {
            Iterator<Path> iterator = stream.iterator();
            while (iterator.hasNext()) {
                out.println("<li class=\"item-thumbs col-lg-3 design\" data-id=\"id-0\" data-type=\"web\">");
                out.println(" <a class=\"hover-wrap fancybox\" data-fancybox-group=\"gallery\" title=\"Portfolio name\" href=\""+ iterator.next().toAbsolutePath() + "\">");
                out.println("<span class=\"overlay-img\"></span>");
                out.println("<span class=\"overlay-img-thumb\"><i class=\"icon-info-blocks fa fa-code\"></i></span>");
                out.println("</a>");
                out.println("<img src=\""+ iterator.next().toAbsolutePath() + " alt=\"\">");
                out.println("</li>");
            }
        } finally {
            stream.close();
        }
    }
    */

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        Path p = Paths.get("G:/up/public");
        //StringBuilder data = new StringBuilder();
        DirectoryStream<Path> stream = Files.newDirectoryStream(p);
        PrintWriter out = response.getWriter();
        try {
            Iterator<Path> iterator = stream.iterator();
            while (iterator.hasNext()) {
                out.println("<li class=\"item-thumbs col-lg-3 design\" data-id=\"id-0\" data-type=\"web\">");
                out.println(" <a class=\"hover-wrap fancybox\" data-fancybox-group=\"gallery\" title=\"Portfolio name\" href=\""+ iterator.next().toAbsolutePath() + "\">");
                out.println("<span class=\"overlay-img\"></span>");
                out.println("<span class=\"overlay-img-thumb\"><i class=\"icon-info-blocks fa fa-code\"></i></span>");
                out.println("</a>");
                out.println("<img src=\""+ iterator.next().toAbsolutePath() + " alt=\"\">");
                out.println("</li>");
            }
        } finally {
            stream.close();
        }
    }

   

}
