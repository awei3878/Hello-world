package jspSamples.unit7.websiteSample;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
public class Function {
    DBConnection DBConn =new DBConnection();
    /**
     * 方法名：CheckLogin
     * 功能描述：登录验证
     * Created by 天码行空
     */
    public boolean CheckLogin(Connection conn,String s1,String s2)
            throws SQLException{
        Statement stmt=conn.createStatement();
        ResultSet re=null;
        boolean OK=true;
        String AdminPwd="";
        String User=CheckReplace(s1);
        String Pwd=CheckReplace(s2);
        String sql="select * from Admin where AdminName='" + User+ "'";
        rs=stmt.executeQuery(Sql);
        if(!rs.next()){
            OK=false;
        }else {
            AdminPwd=rs.getString("AdminPwd");
            OK=Pwd.equals(AdminPwd);
        }
        return OK;
    }

}
