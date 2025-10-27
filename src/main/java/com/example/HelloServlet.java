package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        String name = request.getParameter("name");
        if (name == null || name.trim().isEmpty()) {
            name = "Guest";
        }
        
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String currentTime = now.format(formatter);
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Hello Servlet</title>");
            out.println("<style>");
            out.println("* { margin: 0; padding: 0; box-sizing: border-box; }");
            out.println("body { font-family: 'Segoe UI', Arial, sans-serif; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); min-height: 100vh; display: flex; justify-content: center; align-items: center; padding: 20px; }");
            out.println(".container { background: white; padding: 40px; border-radius: 15px; box-shadow: 0 10px 40px rgba(0,0,0,0.2); max-width: 700px; }");
            out.println("h1 { color: #2c3e50; margin-bottom: 20px; font-size: 2.5em; }");
            out.println(".success { color: #27ae60; font-size: 1.3em; margin: 20px 0; font-weight: 600; }");
            out.println(".info-box { background: #f8f9fa; padding: 20px; border-radius: 10px; margin: 20px 0; border-left: 5px solid #3498db; }");
            out.println(".info-box h3 { color: #3498db; margin-bottom: 15px; }");
            out.println(".info-box ul { list-style: none; padding-left: 0; }");
            out.println(".info-box li { padding: 8px 0; color: #555; border-bottom: 1px solid #ecf0f1; }");
            out.println(".info-box li:last-child { border-bottom: none; }");
            out.println(".info-box li strong { color: #2c3e50; display: inline-block; width: 150px; }");
            out.println(".btn { display: inline-block; padding: 12px 30px; background: #3498db; color: white; text-decoration: none; border-radius: 8px; margin-top: 20px; font-weight: bold; transition: all 0.3s; }");
            out.println(".btn:hover { background: #2980b9; transform: translateY(-2px); }");
            out.println(".emoji { font-size: 1.2em; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class='container'>");
            out.println("<h1><span class='emoji'>🚀</span> Jenkins Deployment Successful!</h1>");
            out.println("<p class='success'>Hello, " + name + "! Welcome to the deployed application.</p>");
            out.println("<div class='info-box'>");
            out.println("<h3><span class='emoji'>📊</span> Deployment Details</h3>");
            out.println("<ul>");
            out.println("<li><strong>Application:</strong> Simple Web Application</li>");
            out.println("<li><strong>Version:</strong> 1.0</li>");
            out.println("<li><strong>Deployed on:</strong> " + currentTime + "</li>");
            out.println("<li><strong>Server:</strong> Apache Tomcat</li>");
            out.println("<li><strong>User:</strong> " + name + "</li>");
            out.println("<li><strong>Servlet Path:</strong> /hello</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("<p style='color: #7f8c8d; margin: 20px 0;'>This servlet was automatically deployed by Jenkins using the 'Deploy to container' plugin.</p>");
            out.println("<a href='index.jsp' class='btn'><span class='emoji'>🏠</span> Back to Home</a>");
            out.println("<a href='about.jsp' class='btn' style='background: #9b59b6; margin-left: 10px;'><span class='emoji'>ℹ️</span> About</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}