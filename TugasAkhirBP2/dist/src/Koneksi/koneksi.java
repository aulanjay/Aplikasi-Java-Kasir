
package Koneksi;

import java.sql.*;
import javax.swing.JOptionPane;
public class koneksi {
    public Connection cn;
    public koneksi(){
        String url,usr,pswd;
        url = "jdbc:mysql://localhost:3306/db_bp2";
        usr = "pma";
        pswd = "";
        try {
            cn = DriverManager.getConnection(url,usr,pswd);            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
    
    public static void main(String[] args) {
        new koneksi();
    }
}
