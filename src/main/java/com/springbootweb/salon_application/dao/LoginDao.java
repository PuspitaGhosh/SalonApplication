package com.springbootweb.salon_application.dao;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.springbootweb.salon_application.model.LoginModel;
@Repository
public class LoginDao {
	@Autowired
	private JdbcTemplate template;
	
	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public int addUserDetails(LoginModel log)
	{
		String sql="insert into user values(?,?,?,?,?)";
		try {
		int row=template.update(sql,new Object[] {log.getFname(),log.getLname(),log.getMobile(),log.getEmail(),log.getPassword()});
		return row;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return 0;
		}
	}	
public String checkIfRegistered(LoginModel login) {
		
		String sql = "select password from user where email=?";
		
		try {

			String userId = template.queryForObject(sql, new Object[] {
					login.getEmail() }, String.class);

			return userId;
			
		} catch (Exception e) {
			return null;
		}
}


}
