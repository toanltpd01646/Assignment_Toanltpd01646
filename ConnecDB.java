/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Model.Product;

/**
 *
 * @author PC
 */
public class ConnecDB {
    static Connection con;
    static String dbName;
    static String user;
    static String pass;

        public static Connection ConnecDB() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_assignment","sa","12345");
        } catch (Exception ex) {
            System.out.println(ex);
                }
        return con;
        
    }
    public int login(String use, String pass){
        try {
            Statement st= con.createStatement();
            ResultSet rs= st.executeQuery("Select * from khachhang where maKH='"+use+"' and  matKhau='"+pass+"' ");
            if (rs.next()){
                if(rs.getString(3).equals("QuanTri"))
                    return 1;
                else
                    return 2;
            }else{
                return 0;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        }
    }
   
    
}
