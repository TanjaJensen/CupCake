
package business.domain;

import business.model.Top;
import business.model.User;
import data.DBConnection;
import data.UserMapper;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


/**
 *
 * @author Tanja
 */
public class Facade {
    
    private static Connection conn;
    private static Facade facade;
    
    public Facade(){
        conn = DBConnection.get();
    }
    private Facade(Connection conn) {
        Facade.conn = conn;
    }
    
     public static Facade getFacade() {
        if (facade == null)
            facade = new Facade();
        return facade;
    }

    public static Facade getFacadeWithConn(Connection conn) {
        if (facade == null)
            facade = new Facade(conn);
        return facade;
    }
    
    public User getUserLogin(String n, String p) throws SQLException {
        UserMapper mapper = new UserMapper(conn);
        return mapper.getUserLogin(n, p);
    }
    
    public User getUser(int id) throws SQLException {
        UserMapper mapper = new UserMapper(conn);
        return mapper.getUser(id);
    }

    public User getUser(User user) throws SQLException {
        UserMapper mapper = new UserMapper(conn);
        return mapper.getUser(user.getId());
    }
    
  //   public List<Top> getTop(int id) throws SQLException {
  //      CakeMapper mapper = new CakeMapper(conn);
  //      Top top = new Top();
  //      top.setId(id);
  //      
  //      return mapper.getTop(top.getId());
  //  }
    
    
}
