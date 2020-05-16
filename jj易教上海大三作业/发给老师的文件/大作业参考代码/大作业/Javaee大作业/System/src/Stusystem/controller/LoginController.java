package Stusystem.controller;

import Stusystem.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * Constructor of the object.
     */
    public LoginController() {
        super();
    }

    /**
     * Destruction of the servlet. <br>
     */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    /**
     * The doGet method of the servlet. <br>
     * <p>
     * This method is called when a form has its tag value method equals to get.
     *
     * @param request  the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException      if an error occurred
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        //�������յ�������
        String username = request.getParameter("username");
        String userpass = request.getParameter("pwd");
        System.out.println("username=" + username);
        System.out.println("password=" + userpass);

        int flag = UserService.checkUserValid(username, userpass);
        //��������
        if (flag == 1) {
            //׼����ҳ������
            //��key-value����ʽ �����ݷŵ�session��

            HttpSession session = request.getSession();
            session.setAttribute("user", UserService.searchUser(username));

            //request.getRequestDispatcher("shopHall.jsp").forward(request, response);
            response.sendRedirect("admin.jsp");
        } else if (flag == 0) {
            response.setHeader("refresh", "10;login.jsp");
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.write("��������û���������������������!");
            out.write("���10����δ�Զ���ת������<a href=\"login.jsp\">�����µ�¼</a>");

        } else if (flag == -1) {
            response.setContentType("utf-8");
            PrintWriter out = response.getWriter();
            out.write("ϵͳ������");
            response.setHeader("refresh", "1;login.jsp");

        }
    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    public void init() throws ServletException {
        // Put your code here
    }

}
