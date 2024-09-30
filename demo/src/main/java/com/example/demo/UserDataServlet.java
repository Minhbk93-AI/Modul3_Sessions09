package com.example.demo;

import sun.util.resources.cldr.ext.TimeZoneNames_it;

import java.io.IOException;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SHOW USER", value = "/show-user")

public class UserDataServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("KHỞI TẠO NÀY");
    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Khởi tạo đối tượng UserData với dữ liệu fix cứng
        UserData user = new UserData(1, "Nguyen Van A", "nguyenvana@example.com", 25);

        // Đặt đối tượng UserData vào request để chuyển tiếp đến JSP
        request.setAttribute("user", user);

        // Chuyển tiếp đến trang JSP hiển thị thông tin
        request.getRequestDispatcher("/views/displayUser.jsp").forward(request, response);
    }
}
