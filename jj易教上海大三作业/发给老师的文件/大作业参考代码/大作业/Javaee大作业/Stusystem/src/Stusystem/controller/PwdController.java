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
                //            �ɹ����ظ�����ҳ��
                response.setHeader("refresh", "3;personal_center.jsp");
                response.setContentType("text/html");
                response.setCharacterEncoding("utf-8");
                PrintWriter out = response.getWriter();
                out.write("�޸ĳɹ���");
                out.write("���3����δ�Զ���ת������<a href=\"personal_center.jsp\">��������</a>");
            } else if (flag_pwd == -1) {
                response.setContentType("utf-8");
                PrintWriter out = response.getWriter();
                out.write("ϵͳ������");
                response.setHeader("refresh", "1;personal_center.jsp");
            }
        } else if (flag == 0) {
            response.setHeader("refresh", "10;pwd_reset.jsp");
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.write("�������������������������!");
            out.write("���10����δ�Զ���ת������<a href=\"pwd_reset.jsp\">�����޸�����</a>");
        } else if (flag == -1) {
            response.setContentType("utf-8");
            PrintWriter out = response.getWriter();
            out.write("ϵͳ������");
            response.setHeader("refresh", "1;personal_center.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

