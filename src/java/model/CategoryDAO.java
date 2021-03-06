package model;

import entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ninh
 */
public class CategoryDAO {
	private final DBContext dbc = new DBContext();
	public List<Category> getCategories(){
		List<Category> list = new ArrayList<>();
		String sql = "select * from Category order by name desc";
		try {
			Connection con = dbc.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				String id = rs.getString("id");
				String name = rs.getString("name");
				Category b = new Category(id, name);
				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			list = null;
		}
		return list;
	}
}
