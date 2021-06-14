package org.jzheng.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = this.getServletContext();
//        InputStream is = context.getResourceAsStream("/WEB-INF/classes/db.properties");
        InputStream is = context.getResourceAsStream("/WEB-INF/classes/org/jzheng/servlet/new.properties");
        Properties prop = new Properties();
        prop.load(is);
        String uname = (String) prop.get("username");
        String pwd = (String) prop.get("password");
        resp.getWriter().print("name: " + uname + "; password: " + pwd);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
