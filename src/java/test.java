
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

    public static void main(String[] args) throws IOException {
       Path homePath2 = Paths.get(System.getProperty("user.dir"));
        
       System.out.println(homePath2.toString());
        
        Path homePath = Paths.get( "C:\\Users\\Jon\\Documents\\NetBeansProjects\\Upemgur2\\web\\serveri");
        
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
