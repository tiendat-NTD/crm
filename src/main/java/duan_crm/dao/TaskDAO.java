package duan_crm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import duan_crm.connection.MySqlConnection;
import duan_crm.model.TaskModel;

public class TaskDAO {
	static List<TaskModel> allTask = new ArrayList<TaskModel>();
	public static List<TaskModel> getAllTask() {
		try {
			String query = "SELECT * FROM tasks";
			Connection connection = MySqlConnection.getConnection();
			PreparedStatement statement = connection.prepareStatement(query);
			
			ResultSet result = statement.executeQuery();
			
			while (result.next()) {
				TaskModel task = new TaskModel(result.getInt("id"),result.getString("task_name"),result.getString("description"),
						result.getString("start_date"),result.getString("end_date"),
						result.getInt("id_user"),result.getInt("id_project"),result.getInt("id_status"));
				
				allTask.add(task);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return allTask;
	}
	public static int getNumberOfStatus(List<TaskModel> taskList, int id) {
		// TODO Auto-generated method stub
		int task = 0;
		for (TaskModel taskModel : taskList) {
			if(taskModel.getId() == id) {
				task++;
			}
		}
		return task;
	}
}
