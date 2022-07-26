package com.javatpoint.dao;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  
import com.javatpoint.beans.Emp;  
  
public class EmpDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Emp p){  
    String sql="insert into sdb_cart(user_id, mag, cnt) values('"+p.getUser_id()+"',"+p.getMag()+",'"+p.getCnt()+"')";  
    return template.update(sql);  
}  
public int update(Emp p){  
    String sql="update sdb_cart set mag=" + p.getMag() + ", cnt=" + p.getCnt() + " where user_id= '" + p.getUser_id() + "'";  
    return template.update(sql);  
}  
public int delete(String user_id, int mag){  
    String sql="delete from sdb_cart where user_id='" + user_id + "' and mag = " + mag + "";  
    return template.update(sql);  
}  
public Emp getEmpById(String user_id) {
    String sql="select * from sdb_cart where user_id=?";
    return template.queryForObject(sql, new Object[]{user_id}, new BeanPropertyRowMapper<Emp>(Emp.class));
}  
public List<Emp> getEmployees(){  
    return template.query("select * from sdb_cart", new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {  
            Emp e=new Emp();  
            e.setUser_id(rs.getString(1));  
            e.setMag(rs.getInt(2));  
            e.setCnt(rs.getInt(3));  
            return e;  
        }  
    });  
}  
}  