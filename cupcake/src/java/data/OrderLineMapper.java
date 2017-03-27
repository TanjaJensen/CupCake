package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Tanja
 */
public class OrderLineMapper {

    private static Connection conn;

    public OrderLineMapper(Connection conn) {
        OrderLineMapper.conn = conn;
    }

    public int insertOrderLine(int Uid, int Bid, int Tid, double Price) throws SQLException {
        String query = "INSERT INTO `OrderLine` (`User_id`, `Bottom_id`, `Top_id`, `Price`)"
                + "VALUES (?, ?, ?, ?);";
        try (PreparedStatement stmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setInt(1, Uid);
            ResultSet rs = stmt.executeQuery();
            stmt.setInt(1, Uid);
            stmt.setInt(2, Bid);
            stmt.setInt(3, Tid);

            if (rs.next()) {
                return rs.getInt(1);
            } else {
                throw new SQLException("Failed to insert user");
            }
        } catch (Exception e) {
            throw new SQLException("insertUser:" + e.getMessage());
        }

    }

}
