package com.javatpoint.controllers;   
import java.util.List;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;  
import org.springframework.web.bind.annotation.PathVariable;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;   
import com.javatpoint.beans.Emp;  
import com.javatpoint.service.EmpService;  

@Controller  
public class EmpController {  
    @Autowired  
    EmpService empService; 
      
    /*It displays a form to input data, here "command" is a reserved request attribute 
     *which is used to display object data into form 
     */  
    @RequestMapping("/empform")  
    public String showform(Model m){  
    	m.addAttribute("command", new Emp());
    	return "empform"; 
    }  
    /*It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET*/  
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public String save(@ModelAttribute("emp") Emp emp){  
        empService.insertEmp(emp);  
        return "redirect:/viewemp";//will redirect to viewemp request mapping  
    }  
    /* It provides list of employees in model object */  
    @RequestMapping("/viewemp")  
    public String viewemp(Model m){  
        List<Emp> list=empService.getEmployees();  
        m.addAttribute("list",list);
        return "viewemp";  
    }  
    /* It displays object data into form for the given id.  
     * The @PathVariable puts URL data into variable.*/  
    @RequestMapping(value="/editemp/{user_id}")  
    public String edit(@PathVariable String user_id, Model m){  
        Emp emp=empService.getEmpById(user_id);  
        m.addAttribute("command",emp);
        return "empeditform";  
    }  
    /* It updates model object. */  
    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
    public String editsave(@ModelAttribute("emp") Emp emp){  
        empService.updateEmp(emp);  
//        System.out.println(emp.getCnt());
//        System.out.println(emp.getMag());
        return "redirect:/viewemp";  
    }  
    /* It deletes record for the given id in URL and redirects to /viewemp */  
    @RequestMapping(value="/deleteemp/{user_id}/{mag}",method = RequestMethod.GET)  
    public String delete(@PathVariable String user_id, @PathVariable int mag){  
        empService.deleteEmp(user_id, mag);  
        return "redirect:/viewemp";  
    }   
}  