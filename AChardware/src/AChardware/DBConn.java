/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AChardware;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */

public class DBConn {
    public Connection conn() {
        Connection mydb = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            mydb = DriverManager.getConnection("jdbc:mysql://localhost:3306/ac_hardware","root","");
            
        } catch (ClassNotFoundException | SQLException e){
        }
        return mydb;
    }
}
