package com.jzheng;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CookieServlet01 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        // loop cookies and get login cookie if exist
        Cookie loginCookie = null;
        Cookie[] cookies = req.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("lastlogin")) {
                loginCookie = cookie;
            }
        }

        // if it's first time login, print log. else print last login time
        if (loginCookie == null) {
            resp.getWriter().print("it's the first time to login...");
        } else {
            String strDateFormat = "yyyy-MM-dd HH:mm:ss";
            SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
            resp.getWriter().print("last login time: " + sdf.format(new Date(Long.parseLong(loginCookie.getValue()))));
        }

        // update login cookie
        Cookie updateLoginTime = new Cookie("lastlogin", System.currentTimeMillis()+"");
        updateLoginTime.setMaxAge(24*60*60);
        resp.addCookie(updateLoginTime);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
