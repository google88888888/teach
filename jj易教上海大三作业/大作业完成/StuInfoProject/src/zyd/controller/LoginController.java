package zyd.controller;

import zyd.service.UserService;

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

        //解析接收到的数据
        String username = request.getParameter("username");
        String userpass = request.getParameter("pwd");
        System.out.println("username=" + username);
        System.out.println("password=" + userpass);

        int flag = UserService.checkUserValid(username, userpass);
        //输入数据
        if (flag == 1) {
            //准备主页面数据
            //以key-value的形式 把数据放到session里

            HttpSession session = request.getSession();
            session.setAttribute("user", UserService.searchUser(username));

            //request.getRequestDispatcher("shopHall.jsp").forward(request, response);
            response.sendRedirect("navigation.jsp");
        } else if (flag == 0) {
        	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
       	    PrintWriter out=response.getWriter();
       	    out.print ("输入的用户名或密码不合法，请重新登录，5秒后自动跳转到登录界面，如若未跳转，请点击<a href=\"login.jsp\">重新登录</a>");
       	    response.addHeader("refresh","5;login.jsp");

        } else if (flag == -1) {
        	response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
			PrintWriter out=response.getWriter();
			out.print ("系统崩溃了，我们会尽快修复，请过段时间再来注册，请随意浏览，没跳转请点击<a href=\"login.jsp\">请重新登录</a>");
			response.addHeader("refresh","5;login.jsp");

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
