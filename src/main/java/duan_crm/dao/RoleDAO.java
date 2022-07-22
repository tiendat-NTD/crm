package duan_crm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import duan_crm.connection.MySqlConnection;


import duan_crm.model.RoleModel;

public class RoleDAO {
	public static RoleModel getRoleById(int id) {
		try {
			String query = "SELECT * FROM roles WHERE id = ?";
			Connection connection = MySqlConnection.getConnection();
			PreparedStatement statement = connection.prepareStatement(query);
			
			statement.setInt(1, id);
			
			ResultSet result = statement.executeQuery();
			
			if(result.next()) {
				RoleModel role = new RoleModel();
				role.setId(result.getInt("id"));
				role.setRoleName(result.getString("role_name"));
				role.setDescription(result.getString("description"));
				
				return role;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
