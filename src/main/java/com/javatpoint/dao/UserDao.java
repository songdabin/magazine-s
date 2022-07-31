package com.javatpoint.dao;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javatpoint.beans.User;

@Repository
public class UserDao {
	@Autowired
	SqlSession sqlSession;
	
	public int insertUser(User u){
		int result = sqlSession.insert("User.insertUser", u);
		return result;
	}
	
	public int updateUser(User u){
		int result = sqlSession.update("User.updateUser", u);
		return result;
	}
	
	public int deleteUser(String id){
		int result = sqlSession.delete("User.deleteUser", id);
		return result;
	}
	
	public User getUserById(String id){
		User u = sqlSession.selectOne("User.getUserById", id);
		return u;
	}
	
	public List<User> getAllRecords(){
		List<User> list = sqlSession.selectList("User.getAllRecords");
		return list;
	}
	
	public User getUser(User u) {
		return sqlSession.selectOne("User.getUser", u);
	}
}
