package com.javatpoint.dao;  
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javatpoint.beans.Emp;  

@Repository
public class EmpDao {
	@Autowired
	SqlSession sqlSession;
	
	HashMap<String, Object> map = new HashMap<String, Object>();
	  
	public int insertEmp(Emp p) {
		int result = sqlSession.insert("Emp.insertEmp", p);
		return result;
	}
	
	public int updateEmp(Emp p){  
	    int result = sqlSession.update("Emp.updateEmp", p);
	    return result;
	}
	
	public int deleteEmp(String user_id, int mag){
		map.put("user_id", user_id);
		map.put("mag", mag);
	    int result = sqlSession.delete("Emp.deleteEmp", map);
		return result;
	}
	
	public Emp getEmpById(String user_id) {
		Emp one = sqlSession.selectOne("Emp.getEmpById", user_id);
		return one;
	}  
	public List<Emp> getEmployees(){  
	    List<Emp> list = sqlSession.selectList("Emp.getEmployees");
	    return list;
	}  
}  