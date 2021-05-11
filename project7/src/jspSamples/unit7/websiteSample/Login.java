package jspSamples.unit7.websiteSample;
import java.sql.Connection;
import java.sql.SQLException;

public class Login {
    DBConnection DBConn=new DBConnection();
    Function Fun=new Function();

    public Login(){}
    public boolean LoginCheck(String s1,String s2){
        try {
            Connection Conn=DBConn.getConn();
            boolean ok=true;
            Ok=Fun.CheckLogin(Conn,s1,s2);
            return Ok;
        }catch (SQLException e){
            return false;
        }
    }
}
