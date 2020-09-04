package cn.edu.zust.Servlet;

import cn.edu.zust.bean.Login;
import cn.edu.zust.dao.LoginDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String userpassword = request.getParameter("userpassword");
        LoginDAO loginDAO = new LoginDAO();
        HttpSession session = request.getSession();
        Login login = loginDAO.checkLogin(username, userpassword);
        if (login != null) {
            session.setAttribute("login", login);
            response.sendRedirect("message.jsp");
        } else response.sendRedirect("error.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
