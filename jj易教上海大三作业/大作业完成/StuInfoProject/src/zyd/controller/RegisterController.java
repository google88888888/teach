package zyd.controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import zyd.service.RegisterService;

public class RegisterController extends HttpServlet {
    public RegisterController() {
        super();
    }

    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        //解析接收到的数据
        String username = request.getParameter("username");
        String userpass = request.getParameter("pwd");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        System.out.println("username=" + username);
        System.out.println("password=" + userpass);
        System.out.println("email=" + email);
        System.out.println("tel=" + tel);
        //设置编码格式
        response.setContentType("text/html;charset=utf-8");//设罝浏览器端解码
   	    PrintWriter out=response.getWriter();
        //检验用户名是否重复
        int flag_1 = RegisterService.checkUserValid(username);
        if (flag_1 == 1) {
            out.write("用户名已存在，请重新输入。");
            response.setHeader("refresh", "3;register.jsp");
            System.out.println("用户名已存在");
        } else if (flag_1 == -1) {
            out.write("系统崩溃了");
            response.setHeader("refresh", "3;login.jsp");
            System.out.println("系统崩溃了");
        } else if (flag_1 == 0) {
            //插入新用户
            int flag = RegisterService.addUser(username, userpass, email, tel);
            if (flag == 1) {
                out.write("注册成功！");
                //request.getRequestDispatcher("login.jsp").forward(request, response);
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("注册成功");
            } else if (flag == 0) {
                out.write("注册失败");
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("注册失败");
            } else if (flag == -1) {
                out.write("系统崩溃了，请稍后再试。");
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("系统崩溃了");
            }
        }
    }
//    public void init() throws ServletException {
//    }
}