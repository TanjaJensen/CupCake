package data;

import business.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Tanja
 */
public class UserMapper {

    private static Connection conn;

    public UserMapper(Connection conn) {
        UserMapper.conn = conn;
    }

    public User getUser(int id) {

        String query = "SELECT Id, `Name`, Password, Balance "
                + "FROM `user` WHERE Id=?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return constructUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getUserLogin(String username, String password)throws SQLException {
         
        String query = "SELECT Id, `Name`, Password, Balance " +
                "FROM  `user` WHERE Name=? AND `Password`=?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
          
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next())
                    return constructUser(rs);
                else 
                    throw new SQLException("getUserLogin No result found," +
                                                       " username: " + username);
            } catch (SQLException e) {                          
                throw new SQLException("getUserLogin ResultSet: " +
                                                   e.getMessage());
            }
        } catch (SQLException e) {
            throw new SQLException("getUserLogin error: " + e.getMessage());
        }
    }
    
    public int insertUser(User u, String password) throws SQLException {
         String query = "INSERT INTO `User` (`Name`, `Password`, `Balance`" +
                "VALUES (?, ?, ?, ?);";
         try (PreparedStatement stmt = conn.prepareStatement(query, Statement
                .RETURN_GENERATED_KEYS)) {
            stmt.setInt(1, u.getId());
            stmt.setString(2, u.getName());
            stmt.setString(3, u.getPassword());
            stmt.setDouble(4, u.getBalance());
            int changed = stmt.executeUpdate();
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if (rs.next())
                    return rs.getInt(1);
                else
                    throw new SQLException("Failed to insert user");
            } catch (Exception e) {
                throw new SQLException("insertUser:" + e.getMessage());
            }
        } catch (SQLException e) {
            throw new SQLException ("getUserLogin error: " + e.getMessage());
        }
   
    }
      public boolean updateUser(User u) throws SQLException {
        String query = "UPDATE `user` SET `Name`=?, Password=?, Balance=?, " +
                "WHERE Id=?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, u.getName());
            stmt.setInt(1, u.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new SQLException("updateUser:" + e.getMessage());
        }
    }
      
      private User constructUser(ResultSet rs) throws SQLException {
        try {
            User u = new User();
            
            u.setId(rs.getInt("Id"));
            u.setName(rs.getString("Name"));
            u.setPassword(rs.getString("Password"));
            u.setBalance(rs.getDouble("Balance"));
            return u;
        } catch (SQLException e) {
            throw new SQLException("failed to constructUser: " + e
                    .getMessage());
        }

    }
}
