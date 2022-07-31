package com.javatpoint.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javatpoint.beans.Emp;
import com.javatpoint.dao.EmpDao;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	EmpDao empDAO;

	@Override
	public int insertEmp(Emp p) {
		return empDAO.insertEmp(p);
	}

	@Override
	public int updateEmp(Emp p) {
		return empDAO.updateEmp(p);
	}

	@Override
	public int deleteEmp(String user_id, int mag) {
		return empDAO.deleteEmp(user_id, mag);
	}

	@Override
	public Emp getEmpById(String user_id) {
		return empDAO.getEmpById(user_id);
	}

	@Override
	public List<Emp> getEmployees() {
		return empDAO.getEmployees();
	}
	
	
}
