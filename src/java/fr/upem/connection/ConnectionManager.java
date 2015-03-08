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
public class ConnectionManager {

    static Connection con;
    static String url;

    public static Connection getConnection() {
        try {
            //String url = "jdbc:odbc:" + "DataSource";
            String url = "jdbc:derby://localhost:1527/basefac";
            String user="jojo";
            String mdp="123";
            // assuming "DataSource" is your DataSource name
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            try {
                con = DriverManager.getConnection(url, user, mdp);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
        return con;

    }

}

