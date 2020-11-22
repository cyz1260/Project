  package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.niit.pojo.BookCategory;
import com.niit.pojo.Orders;
import com.niit.pojo.SBookList;
import com.niit.pojo.User;
import com.niit.pojo.UserAddress;
import com.niit.service.AdminService;
import com.niit.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/toregister")
	public String Main(){
		return "register";
	}
	
	@RequestMapping(value = "/userregister",method = RequestMethod.POST)
	public String RegisterUser(User newuser) {
		newuser.setUserstate("禁用");
		userService.RegisterUser(newuser);
		return "main";
	}
	
	@RequestMapping("/gologin")
	public String GoLogin() {
		return "login";
	}
	
	@RequestMapping(value = "/userlogin",method = RequestMethod.POST)
	public String UserLogin(String userid,String userpassword,Map<String, Object> data,HttpServletResponse response) throws IOException {
		User user = userService.UserLogin(userid);
		if (user.getUserpassword().equals(userpassword) && user.getUserstate().equals("禁用")) {
			data.put("user", user);
			return "main";
			
		}
		else if (user.getUserpassword().equals(userpassword) && user.getUserstate().equals("恢复")) {
			response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script language=\"javascript\">alert('您的账号存在违规行为，已被封停，请联系管理员解封！')</script>");
            return null;
		}else {
			return "fail";
		} 
	}
	
	@RequestMapping("/gouserindex")
	public String GoUserIndex(String userid,Model model) {
		model.addAttribute("userid", userid);
		return "userindex";
	}
	
	@RequestMapping("/gomain")
	public String GoMain(String userid,Model model) {
		User user = userService.FindUserInfo(userid);
		model.addAttribute("user",user);
		return "main";
	}
	
	@RequestMapping("/finduserinfo")
	public String FindUserInfo(String userid,Map<String, Object> data) {
		User user = userService.FindUserInfo(userid);
		data.put("user", user);
		return "updateuserinfo";
	}
	
	@RequestMapping("/updateuserinfo")
	public String UpdateUserInfo(String userid,String username,String gender,String telnumber) {
		userService.UpdateUserInfo(userid, username, gender, telnumber);
		return"main";
	}
	
	@RequestMapping("/goupdatepassword")
	public String GoUpdatePassword(String userid,Model model) {
		model.addAttribute("userid", userid);
		return "updatepassword";
	}
	
	@RequestMapping(value = "/updateuserpassword",method = RequestMethod.POST)
	public String UpdateUserPassword(String userid,String userpassword,String usernewpassword,String confirmpassword,HttpServletResponse response) throws IOException {
		User user = userService.FindUserInfo(userid);
		if (user.getUserpassword().equals(userpassword) && usernewpassword.equals(confirmpassword)) {
			userService.UpdateUserPassword(usernewpassword, userid);
			return "main";
		}
		else {
			response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script language=\"javascript\">alert('修改失败！')</script>");
			return null;
		}
	}
	
	
	@RequestMapping("/findusersellbooks")
	public String FindUserSellBooks(String userid,Model model) {
		List<SBookList> sbookList = userService.SelectUserSellBooks(userid);
		model.addAttribute("sbooklist", sbookList);
		model.addAttribute("userid", userid);
		return"managebooks";
	}
	
	
	@RequestMapping("/updateonebook")
	public String UpdateOneBook(String sbookname,String sbookprice,String sbookid,String userid) {
		userService.UpdateOneBook(sbookname, sbookprice,sbookid);
		return "redirect:/user/findusersellbooks?userid="+userid;
	}
	
	@RequestMapping("/deleteonebook")
	public String DeleteOneBook(String sbookid,String userid) {
		userService.DeleteOneBook(sbookid);
		return "redirect:/user/findusersellbooks?userid="+userid;
	}
	
	@RequestMapping("/findallorders")
	public String findAllOrders(String userid,Model model) {
		List<Orders> orders = userService.FindAllOrders(userid);
		model.addAttribute("orders", orders);
		model.addAttribute("userid", userid);
		return "manageorders";
	}
	
	@RequestMapping("/deleteorder")
	public String DeleteOrder(String orderid,String userid) {
		userService.DeleteOrders(orderid);
		return "redirect:/user/findallorders?userid="+userid;
	}
	
	
	@RequestMapping("/gosellbooks")
	public String GoSellBooks(String userid,Map<String, Object> data) {
		data.put("userid",userid);
		List<BookCategory> list = adminService.SelectAllCategory();
		data.put("bookcategory", list);
		return "sellbooks";
	}
	
	@RequestMapping(value = "/sellbooks")
	public String SellBooks(SBookList sBookList,HttpServletRequest request) throws Exception, IOException {
		int i = 1;
        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        //检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            //将request变成多部分request 
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                String fileName = (String) iter.next();
                List<MultipartFile> fileList = multiRequest.getFiles(fileName);
                if (fileList.size() > 0) {
                    Iterator<MultipartFile> fileIte = fileList.iterator();
                    while (fileIte.hasNext()) {
                        MultipartFile multipartFile = fileIte.next();
                        String originalFilename = multipartFile.getOriginalFilename();
                        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
                        Date date = new Date();
                        String newname = date.getTime() + suffix;
                        String realpath = request.getServletContext().getRealPath("/bookimgs");
                        String path = realpath + "\\" + newname;
                        //上传
                        multipartFile.transferTo(new File(path));
                        String sqlpath = "bookimgs/" + newname;
                        if (i == 1) {
                            sBookList.setSbookimga(sqlpath);
                        }
                        if (i == 2) {
                            sBookList.setSbookimgb(sqlpath);
                        }
                        i++;
                    }
                    userService.SellBooks(sBookList);
                }
            }
        }
		
		return "main";
	}
	
	
	@RequestMapping("/manageaddress")
	public String FindUserAddress(String userid,Model model) {
		List<UserAddress> list = userService.SelectUserAddress(userid);
		model.addAttribute("useraddress",list);
		model.addAttribute("userid", userid);
		return "addaddress";		
	}
	
	@RequestMapping("/updateuseraddress")
	public String UpdateUserAddress(String ausername, String ausertel, String address, String auseraddressid,String userid) {
		userService.UpdateUserAddress(ausername, ausertel, address, auseraddressid);
		return "redirect:/user/manageaddress?userid="+userid;
	}
	
	@RequestMapping("/deleteuseraddress")
	public String DeleteUserAddress(String auseraddressid,String userid) {
		userService.DeleteUserAddress(auseraddressid);
		return "redirect:/user/manageaddress?userid="+userid;
	}

}
