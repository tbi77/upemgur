/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.upem.connection;

import java.sql.*;

/**
 *
 * @author Jon
 */
public class UserDAO {

    static Connection currentCon = null;
    static ResultSet rs = null;

    public static UserBean login(UserBean bean) {

        //preparing some objects for connection 
        Statement stmt = null;
        String email = bean.getUserEmail();
        String password = bean.getPassword();
        String searchQuery = "select * from ut where ut_mail='" + email + "' and ut_mdp='" + password + "'";

        try {
            //connect to DB 
            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            // if user does not exist set the isValid variable to false
            if (!more) {
                bean.setValid(false);
            } 
            
            //if user exists set the isValid variable to true
            else if (more) {
                String pseudo = rs.getString("UT_PSEUDO");
                bean.setUserpseudo(pseudo);
                bean.setValid(true);
            }
        } catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        } //some exception handling
        
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                }
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }
                currentCon = null;
            }
        }
        return bean;

    }

    public static UserBean register(UserBean bean) {

        //preparing some objects for connection 
        Statement stmt = null;
        String email = bean.getUserEmail();
        String password = bean.getPassword();
        String pseudo = bean.getUserpseudo();
        String insertQuery = "insert into ut (ut_mail,ut_mdp,ut_pseudo) values('" + email + "','" + password + "','" + pseudo + "')";
        String searchQuery = "select * from ut where ut_mail='" + email + "' or ut_mdp='" + password + "'";
        
        try {
            //connect to DB 
            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(searchQuery);
            boolean more = rs.next();
            
            // if user does not exist set the isValid variable to true and insert user into database
            if (!more) {
                stmt.execute(insertQuery);
                //if user exists set the isValid variable to true
                bean.setUserpseudo(pseudo);
                bean.setValid(true);
            } 
            
            //if user exists set the isValid variable to false
            else if (more) {
                bean.setValid(false);
            }

                
        } catch (Exception ex) {
            System.out.println("Registering failed: An Exception has occurred! " + ex);
        } //some exception handling
        
        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                }
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }
                currentCon = null;
            }
        }
        return bean;

    }

}
