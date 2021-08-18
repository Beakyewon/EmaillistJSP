package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.EmaillistDaoImpl;
import com.javaex.dao.EmaillistVo;

import com.javaex.dao.EmaillistDao;

@WebServlet(description = "이메일리스트 서블릿", urlPatterns = {"/emaillist"})
public class EmaillistServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EmaillistServlet() {
      super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("EmaillistServlet.doGet() 호출");
      request.setCharacterEncoding("utf-8");

      String actionName = request.getParameter("a");
      
      	if("add".equals(actionName)) {
        System.out.println("actionName => " + actionName);
        request.setCharacterEncoding("utf-8");

        String lastname = request.getParameter("lastname");
        String firstname = request.getParameter("firstname");
        String email = request.getParameter("email");

        EmaillistVo vo = new EmaillistVo();

        vo.setLastName(lastname);
        vo.setFirstName(firstname);
        vo.setEmail(email);

        EmaillistDao dao = new EmaillistDaoImpl();
        dao.insert(vo);

        response.sendRedirect("/EmaillistJSP/emaillist");
      } else if("delete".equals(actionName)) {
        System.out.println("actionName => " + actionName);
        request.setCharacterEncoding("utf-8");
        
        Integer no = Integer.parseInt(request.getParameter("no"));

        EmaillistVo vo = new EmaillistVo();
        
        vo.setNo(no);
       
        EmaillistDao dao = new EmaillistDaoImpl();
        
        dao.delete(no);
        
        response.sendRedirect("/EmaillistJSP/emaillist");
      }else {
        System.out.println("actionName => " + actionName);
        EmaillistDao dao = new EmaillistDaoImpl();
        List<EmaillistVo> list = dao.getList();

        request.setAttribute("list", list);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
        rd.forward(request, response);
      }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}