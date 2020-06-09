package zyd.controller;

import zyd.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.util.List;

import zyd.util.DBHelp;
import zyd.bean.*;
import zyd.service.*;

public class WorksController extends HttpServlet {
	WorksService worksService = new WorksService();
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    /**
     * Constructor of the object.
     */
    public WorksController() {
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

		Connection con = null;
		try {
			HttpSession session = request.getSession();
			List<Works> worksList = worksService.SearchAll();
			session.setAttribute("worksList", worksList);
			request.getRequestDispatcher("worksList.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
