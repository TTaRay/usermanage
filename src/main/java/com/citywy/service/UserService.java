package com.citywy.service;
 
import com.citywy.domain.User;
import com.citywy.util.DBConnUtil;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
	/**
	 * 用户登录
	 * @return
	 * @throws SQLException 
	 */
	public boolean UserLogin(User user) throws SQLException{
		boolean b=false;
		String sql="select * from user where name=? and password=?";
		String [] parameters={user.getName(),user.getPassword()};
		ResultSet rs= DBConnUtil.executeQueryRS(sql, parameters);
		if(rs.next()){
			b=true;
		}
		return b;
	}
}