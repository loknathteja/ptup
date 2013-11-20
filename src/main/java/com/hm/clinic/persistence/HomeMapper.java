package com.hm.clinic.persistence;

import org.springframework.orm.ibatis.SqlMapClientFactoryBean;

import com.hm.clinic.model.User;

public interface HomeMapper {
	public User getUserById(int userId);
}		
