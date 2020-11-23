package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.pojo.Admin;
import com.niit.pojo.BookCategory;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;
import com.niit.service.AdminService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/goadminlogin")
	public String GoAdminLogin() {
		return"adminlogin";
	}
	
	@RequestMapping(value = "/adminlogin",method = RequestMethod.POST)
	public String AdminLogin(String adminid,String adminpassword,Map<String,Object> data,HttpServletResponse response) throws IOException {
		Admin admin = adminService.AdminLogin(adminid);
		if (admin == null) {
			response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script language=\"javascript\">alert('该账号尚未注册！')</script>");
            return null;
		}
		if (admin.getAdminpassword().equals(adminpassword)) {
			data.put("admin",admin);
			return"adminindex";
		}
		else {
			return "fail";
		}
	}
	
	@RequestMapping(value = "/addcategory",method = RequestMethod.POST)
	public String Addcategory(String categoryname) {
		adminService.AddCategory(categoryname);
		return "redirect:/admin/selectcategory";
		}
	
	@RequestMapping("/deletecategory")	
	public String DeleteCategory(String categoryid) {
        adminService.DeleteCategory(categoryid);
		return"redirect:/admin/selectcategory";
	}
	
	@RequestMapping("/selectcategory")	
	public String SelectCategory(Model model) {
        List<BookCategory> list = adminService.SelectAllCategory();
        model.addAttribute("bookcategory", list);
		return"managebookcategory";
	}
	
	@RequestMapping("/updateuserstate")
	public String UpdateUserState(String userid) {
		User user = userservice.FindUserInfo(userid);
		if (user.getUserstate().equals("禁用")) {
			adminService.UpdateUserState(userid);
		}
		else {
			adminService.UpdateUserStateON(userid);
		}
		return "redirect:/admin/selectallusers";
	}
	
	@RequestMapping("/checksbooklist")
	public String CheckSBookList(Model model) {
		List<SBookList> list = adminService.CheckSBookList();
		model.addAttribute("sbooklist",list);
		return "checkbooks";
	}
	
	@RequestMapping("/updatesuccess")
    public String UpdateSuccess(String sbookid) {
    	 adminService.UpdateSuccess(sbookid);
    	return"redirect:/admin/checksbooklist";
    }
    
	@RequestMapping("/updatefail")
	public String UpdateFail(String sbookid) {
		adminService.UpdateFail(sbookid);
		return "redirect:/admin/checksbooklist";
	}
	
	@RequestMapping("/selectallusers")
	public String SelectAllUser(Model model) {
		List<User> usersList = adminService.SelectAllUser();
		model.addAttribute("users", usersList);
		return"manageusers";
	}

}
