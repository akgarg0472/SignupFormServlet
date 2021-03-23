package com.akgarg.SignupFormServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SignupHandlerServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        response.setContentType("text/html");

        String userName = request.getParameter("user-name");
        String userId = request.getParameter("user-id");
        String userPassword = request.getParameter("user-password");
        String userEmail = request.getParameter("user-email");
        String userContact = request.getParameter("user-contact");

        writer.println("<h1>Thank you for registering with us " + userName + "</h1>");
        writer.println("<strong>User id: </strong>" + userId + "<br>");
        writer.println("<strong>Your contact details with us are:</strong><br>");
        writer.println("<strong>Email: <strong>" + userEmail + "<br>");
        writer.println("<strong>Contact #: </strong>" + userContact + "<br>");

        System.out.println("Password enter by user is: " + userPassword);
    }
}