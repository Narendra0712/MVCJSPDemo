package com.cdac.daoimpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import com.cdac.connection.DbConnection;
import com.cdac.dao.UserDao;
import com.cdac.pojo.User;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean checkUserCredentials(User user) {
		
		try(Connection con = DbConnection.getDatabaseConnection()){
			
			PreparedStatement pst = 
					con.prepareStatement("SELECT * FROM userdata"
							+ " WHERE username = ? and password = ?");
			
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst())
				return true;
			else
				return false;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addNewUser(User user) {
		
		try(Connection con = DbConnection.getDatabaseConnection()){
			
			PreparedStatement pst = 
					con.prepareStatement("INSERT INTO userdata "
							+ "VALUES(?,?)");
			
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			
			int count = pst.executeUpdate();
			
			if(count > 0)
				return true;
			else
				return false;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public String checkUser(User user) {
		
		try(Connection con = DbConnection.getDatabaseConnection()){
			
			CallableStatement cs = 
					con.prepareCall("{call CheckUser(?,?,?)}");
			
			cs.setString(1, user.getUsername());
			cs.setString(2, user.getPassword());
			
			cs.registerOutParameter(3, Types.VARCHAR);
			
			cs.execute();
			
			String msg = cs.getString(3);
			
			if(msg.equals("available"))
				return "a";
			else
				return "n/a";
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return "n/a";
		}
	}
	
	
}












