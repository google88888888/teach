package Stusystem.controller;

import Stusystem.bean.UserBean;
import Stusystem.service.UserService;

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
        UserBean user = (UserBean) session.getAttribute("user");
        String username = user.getUsr();
        String old_pwd = request.getParameter("old_pwd");
        String new_pwd = request.getParameter("new_pwd");
        int flag = UserService.checkUserValid(username, old_pwd);
        if (flag == 1) {
            int flag_pwd = UserService.changeUserPwd(username, new_pwd);
            if (flag_pwd == 1) {
                //            成功返回个人主页面
                response.setHeader("refresh", "3;personal_center.jsp");
                response.setContentType("text/html");
                response.setCharacterEncoding("utf-8");
                PrintWriter out = response.getWriter();
                out.write("修改成功！");
                out.write("如果3秒内未自动跳转，请点击<a href=\"personal_center.jsp\">个人中心</a>");
            } else if (flag_pwd == -1) {
                response.setContentType("utf-8");
                PrintWriter out = response.getWriter();
                out.write("系统崩溃了");
                response.setHeader("refresh", "1;personal_center.jsp");
            }
        } else if (flag == 0) {
            response.setHeader("refresh", "10;pwd_reset.jsp");
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.write("您输入的密码有误，请重新输入!");
            out.write("如果10秒内未自动跳转，请点击<a href=\"pwd_reset.jsp\">继续修改密码</a>");
        } else if (flag == -1) {
            response.setContentType("utf-8");
            PrintWriter out = response.getWriter();
            out.write("系统崩溃了");
            response.setHeader("refresh", "1;personal_center.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

