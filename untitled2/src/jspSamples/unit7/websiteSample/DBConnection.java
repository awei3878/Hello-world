package jspSamples.unit7.websiteSample;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
    private String FileName;
    private int DBType;
    private Connection conn;
    private String MySqlDriver;
    private String MySqlURL;
    public DBConnection(){
        conn=null;
    }
    public Connection getConn(){
        DBType=1;
        switch (DBType){
            case 1:return (getConnToMySql());
            default:return null;
        }
    }
    public Connection getConnToMySql(){
        try {
            MySqlDriver="org.git.mm.mysql.Driver";
            MySqlURL="jdbc:mysql://127.0.0.1:3306/testdb?user=root&password=root@K&useUnicode=true&characterEncoding=UTF-8";
            Class.forName(MySqlDriver).newInstance();
            conn=DriverManager.getConnection(MySqlURL);
        }catch (Exception e){
        }
        return conn;
    }

}
