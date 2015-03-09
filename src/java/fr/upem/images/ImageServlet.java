/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.images;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;

import java.io.IOException;
import static java.lang.System.out;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jon
 */
public class ImageServlet extends HttpServlet {

    private String imagePath;

    // Init ---------------------------------------------------------------------------------------
    public void init() throws ServletException {
        this.imagePath = "G:/up/public";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       // Path homePath = Paths.get("C:\\Users\\Jon\\Documents\\NetBeansProjects\\Upemgur2\\web\\img2");
       // DirectoryStream<Path> stream = Files.newDirectoryStream(homePath);
       // for (Path entry : stream) {
        //    out.println(entry.toString());
            out.println("<li class=\"item-thumbs col-lg-3 design\" data-id=\"id-0\" data-type=\"web\">");
            out.println("<a class=\"hover-wrap fancybox\" data-fancybox-group=\"gallery\" title=\"Portfolio name\" href=\"" + "2.jpg" + "\">");
            out.println("<span class=\"overlay-img\"></span>");
            out.println("<span class=\"overlay-img-thumb\"><i class=\"icon-info-blocks fa fa-code\"></i></span>");
            out.println("</a>");
            out.println("<img src=\"" + "2.jpg" + "\" alt=\"\">");
            out.println("</li>");
      //  }

    }

}
