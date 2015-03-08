/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.connection;

/**
 *
 * @author Jon
 */
public class UserBean {

    private String pseudo;
    private String password;
    private String email;
    public boolean valid;

    public String getUserEmail() {
        return email;
    }

    public void setUserEmail(String newEmail) {
        email = newEmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String newPassword) {
        password = newPassword;
    }

    public String getUserpseudo() {
        return pseudo;
    }

    public void setUserpseudo(String newUserpseudo) {
        pseudo = newUserpseudo;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean newValid) {
        valid = newValid;
    }

}
