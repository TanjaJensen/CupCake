
package data;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Tanja
 */
public class DBConnection {
    
    private static String driver = "com.mysql.jdbc.Driver";
    private static String ip = "localhost";
    private static String db = "cupcake";
    private static int port = 3306;
    private static String user = "root";
    private static String password = "tanja123";

    private static Connection conn = null;
    private static Connection testConn = null;

    public static Connection get() {
        if (conn == null) {
            try {
                Class.forName(driver);
                String url = "jdbc:mysql://" + ip + ":" + port + "/" + db;
                url += "?useUnicode=true&amp;characterEncoding=UTF8";
                conn = DriverManager.getConnection(url, user, password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return conn;
    }

    public static Connection getTest() {
        if (testConn == null) {
            try {
                Class.forName(driver);
                String url = "jdbc:mysql://" + ip + ":" + port;
                testConn = DriverManager.getConnection(url, user, password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return testConn;
    }
    
}
