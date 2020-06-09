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
                //            �ɹ����ظ�����ҳ��
            	response.setContentType("text/html;charset=utf-8");//���D������˽���
           	    PrintWriter out=response.getWriter();
           	    out.print ("�޸ĳɹ���5����Զ���ת���������ģ�����δ��ת������<a href=\"personalcenter.jsp\">��������</a>");
           	    response.addHeader("refresh","5;personalcenter.jsp");
            } else if (flag_pwd == -1) {
            	response.setContentType("text/html;charset=utf-8");//���D������˽���
    			PrintWriter out=response.getWriter();
    			out.print ("ϵͳ�����ˣ����ǻᾡ���޸��������ʱ������ע�ᣬ�����������û��ת����<a href=\"personalcenter.jsp\">��������</a>");
    			response.addHeader("refresh","5;personalcenter.jsp");
            }
        } else if (flag == 0) {
        	response.setContentType("text/html;charset=utf-8");//���D������˽���
       	    PrintWriter out=response.getWriter();
       	    out.print ("�����������������������룬5����Զ���ת���޸����룬����δ��ת������<a href=\"reset.jsp\">�����޸�����</a>");
       	    response.addHeader("refresh","5;reset.jsp");
        } else if (flag == -1) {
        	response.setContentType("text/html;charset=utf-8");//���D������˽���
			PrintWriter out=response.getWriter();
			out.print ("ϵͳ�����ˣ����ǻᾡ���޸��������ʱ������ע�ᣬ�����������û��ת����<a href=\"personalcenter.jsp\">��������</a>");
			response.addHeader("refresh","5;personalcenter.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

