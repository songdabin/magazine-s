package com.javatpoint.service;

import java.util.List;

import com.javatpoint.beans.User;

public interface UserService {
	public int insertUser(User u);
	public int updateUser(User u);
	public int deleteUser(String id);
	public User getUserById(String id);
	public List<User> getAllRecords();
	public User getUser(User u);
}
