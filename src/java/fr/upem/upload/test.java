package fr.upem.upload;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Jon
 */
public class test {

    static String saveFile = Paths.get(".").toAbsolutePath().toString().replace("\\", "/");
    
    public static void main(String[] args) throws IOException {
        
        String str;
        str = saveFile.substring(0, saveFile.length() - 1);
        System.out.println(str + "serverimg" + "/" + "pwet.jpg");
        
        
        
        //////////////////////
        
        //Path homePath2 = Paths.get(".");

       // String saveFile = Paths.get(".").toAbsolutePath().toString().replace("\\", "/");
        //saveFile = saveFile.replace(".", ""); 
       // saveFile = saveFile.substring(0, saveFile.length() - 1);
        //System.out.println(saveFile + "serverimg/membres/");

//System.out.println(homePath2.toAbsolutePath().toString());
        Path homePath = Paths.get("C:\\Users\\Jon\\Documents\\NetBeansProjects\\Upemgur2\\web\\serveri");

        StringBuilder data = new StringBuilder();
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(homePath)) {
            for (Path entry : stream) {
                data.append("<li class=\"item-thumbs col-lg-3 design\" data-id=\"id-0\" data-type=\"web\">");
                data.append(" <a class=\"hover-wrap fancybox\" data-fancybox-group=\"gallery\" title=\"Portfolio name\" href=\"" + entry.toString() + "\">");
                data.append("<span class=\"overlay-img\"></span>");
                data.append("<span class=\"overlay-img-thumb\"><i class=\"icon-info-blocks fa fa-code\"></i></span>");
                data.append("</a>");
                data.append("<img src=\"" + entry.toString() + "\" alt=\"\">");
                data.append("</li>" + "\n" + "\n");
            }
        }

        System.out.println(data.toString());
    }
}
