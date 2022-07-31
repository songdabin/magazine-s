package com.javatpoint.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javatpoint.beans.User;
import com.javatpoint.dao.UserDao;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDAO;

	@Override
	public int insertUser(User u) {
		return userDAO.insertUser(u);
	}

	@Override
	public int updateUser(User u) {
		return userDAO.updateUser(u);
	}

	@Override
	public int deleteUser(String id) {
		return userDAO.deleteUser(id);
	}

	@Override
	public User getUserById(String id) {
		return userDAO.getUserById(id);
	}

	@Override
	public List<User> getAllRecords() {
		return userDAO.getAllRecords();
	}

	@Override
	public User getUser(User u) {
		return userDAO.getUser(u);
	}
}
