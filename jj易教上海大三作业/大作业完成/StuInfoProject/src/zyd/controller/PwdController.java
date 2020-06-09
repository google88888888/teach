package zyd.controller;

import zyd.bean.Users;
import zyd.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class PwdController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");
        String username = user.getUsr();
        String old_pwd = request.getParameter("old_pwd");
        String new_pwd = request.getParameter("new_pwd");
        int flag = UserService.checkUserValid(username, old_pwd);
        if (flag == 1) {
            int flag_pwd = UserService.changeUserPwd(username, new_pwd);
            if (flag_pwd == 1) {
                //            成功返回个人主页面
            	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
           	    PrintWriter out=response.getWriter();
           	    out.print ("修改成功，5秒后自动跳转到个人中心，如若未跳转，请点击<a href=\"personalcenter.jsp\">个人中心</a>");
           	    response.addHeader("refresh","5;personalcenter.jsp");
            } else if (flag_pwd == -1) {
            	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
    			PrintWriter out=response.getWriter();
    			out.print ("系统崩溃了，我们会尽快修复，请过段时间再来注册，请随意浏览，没跳转请点击<a href=\"personalcenter.jsp\">个人中心</a>");
    			response.addHeader("refresh","5;personalcenter.jsp");
            }
        } else if (flag == 0) {
        	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
       	    PrintWriter out=response.getWriter();
       	    out.print ("您输入的密码有误，请继续输入，5秒后自动跳转到修改密码，如若未跳转，请点击<a href=\"reset.jsp\">继续修改密码</a>");
       	    response.addHeader("refresh","5;reset.jsp");
        } else if (flag == -1) {
        	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
			PrintWriter out=response.getWriter();
			out.print ("系统崩溃了，我们会尽快修复，请过段时间再来注册，请随意浏览，没跳转请点击<a href=\"personalcenter.jsp\">个人中心</a>");
			response.addHeader("refresh","5;personalcenter.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

