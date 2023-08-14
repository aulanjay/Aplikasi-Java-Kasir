/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Kasir;
import java.sql.*;
import Koneksi.koneksi;
import javax.swing.JOptionPane;
import java.util.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author Dede Irawan
 */
public class Setting {
    
    public String[] Nota(){
        koneksi db = new koneksi();
        Statement st;
        ResultSet rs;
        
        Date d = new Date();
        SimpleDateFormat df = new  SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");
        String Nota[] = {df.format(d), df2.format(d),""};
        try {
            st = db.cn.createStatement();
            rs = st.executeQuery("SELECT max(CONVERT(RIGHT(nota,4),integer))+1 As No FROM tbl_penjualan where tgl_penjualan='"+ Nota[1] +"'");
            
            if(rs.next()){                
                if(rs.getString(1)==null){
                    Nota[2]=Nota[1]+"-0001";
                }else{
                    if(rs.getString(1).length()==1){
                        Nota[2]=Nota[1]+"-000"+rs.getString(1);
                    }else if(rs.getString(1).length()==2){
                        Nota[2]=Nota[1]+"-00"+rs.getString(1);
                    }else if(rs.getString(1).length()==3){
                        Nota[2]=Nota[1]+"-0"+rs.getString(1);
                    }else if(rs.getString(1).length()==4){
                        Nota[2]=Nota[1]+"-"+rs.getString(1);
                    }
                }
            }else{
                JOptionPane.showMessageDialog(null, "Gagal");
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return Nota;
    }
    

    
    public static void main(String[] args) {
        Setting s = new Setting();
        
        System.out.println(s.Nota()[0] + " - " + s.Nota()[1] + " - " + s.Nota()[2]);
        
    }
}
