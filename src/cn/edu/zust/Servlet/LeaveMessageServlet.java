package cn.edu.zust.Servlet;

import cn.edu.zust.bean.Login;
import cn.edu.zust.bean.Message;
import cn.edu.zust.dao.LoginDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/LeaveMessageServlet")
public class LeaveMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String message1 = request.getParameter("message");
        Login login = (Login) request.getSession().getAttribute("login");
        Message message = new Message();
        message.setId(login.getId());
        message.setUsername(login.getUsername());
        message.setTime(new Date(System.currentTimeMillis()));
        message.setTitle(title);
        message.setMessage(message1);
        if (new LoginDAO().insertMessage(message))
            response.sendRedirect("success.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
