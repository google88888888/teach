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
        //�������յ�������
        String username = request.getParameter("username");
        String userpass = request.getParameter("pwd");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        System.out.println("username=" + username);
        System.out.println("password=" + userpass);
        System.out.println("email=" + email);
        System.out.println("tel=" + tel);
        //���ñ����ʽ
        response.setContentType("text/html;charset=utf-8");//���D������˽���
   	    PrintWriter out=response.getWriter();
        //�����û����Ƿ��ظ�
        int flag_1 = RegisterService.checkUserValid(username);
        if (flag_1 == 1) {
            out.write("�û����Ѵ��ڣ����������롣");
            response.setHeader("refresh", "3;register.jsp");
            System.out.println("�û����Ѵ���");
        } else if (flag_1 == -1) {
            out.write("ϵͳ������");
            response.setHeader("refresh", "3;login.jsp");
            System.out.println("ϵͳ������");
        } else if (flag_1 == 0) {
            //�������û�
            int flag = RegisterService.addUser(username, userpass, email, tel);
            if (flag == 1) {
                out.write("ע��ɹ���");
                //request.getRequestDispatcher("login.jsp").forward(request, response);
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("ע��ɹ�");
            } else if (flag == 0) {
                out.write("ע��ʧ��");
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("ע��ʧ��");
            } else if (flag == -1) {
                out.write("ϵͳ�����ˣ����Ժ����ԡ�");
                response.setHeader("refresh", "3;login.jsp");
                System.out.println("ϵͳ������");
            }
        }
    }
//    public void init() throws ServletException {
//    }
}