/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.images;

import java.io.Serializable;


/**
 *
 * @author Jon
 */
public class Image implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private String filename;
    private String path;
    private String title;
    private String description;
   // private Timestamp time;
 //   private String metadata;
   // private User user;


    public Image() {
    }

    public Image(String filename, String path, String title, String description) {
        this.filename = filename;
        this.path = path;
        this.title = title;
        this.description = description;
      //  this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


}
