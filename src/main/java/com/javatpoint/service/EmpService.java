package com.javatpoint.service;

import java.util.List;

import com.javatpoint.beans.Emp;

public interface EmpService {
	public int insertEmp(Emp p);
	public int updateEmp(Emp p);
	public int deleteEmp(String user_id, int mag);
	public Emp getEmpById(String user_id);
	public List<Emp> getEmployees();
}
