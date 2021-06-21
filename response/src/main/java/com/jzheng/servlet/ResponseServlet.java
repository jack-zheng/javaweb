package com.jzheng.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public class ResponseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        URL url = getClass().getClassLoader().getResource("tree.png");
        String filePath = "C:\\Users\\jack\\IdeaProjects\\javaweb\\response\\src\\main\\resources\\tree.png";
        String fileName = filePath.substring(filePath.lastIndexOf("//") + 1);
        resp.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        byte[] buf= new byte[1024];
        int len = 0;
        InputStream is = new FileInputStream(filePath);
        OutputStream os = resp.getOutputStream();
        while((len=is.read(buf))>0) {
            os.write(buf, 0, len);
        }
        os.close();
        is.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
