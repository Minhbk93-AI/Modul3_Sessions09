package com.example.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display-discount")
public class DiscountCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");


        // Lấy dữ liệu từ form
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));

        // Tính toán chiết khấu
        float discountAmount = price * discountPercent * 0.01f;
        float discountPrice = price - discountAmount;

        // Đặt thuộc tính cho request để chuyển tiếp đến JSP
        request.setAttribute("description", description);
        request.setAttribute("price", price);
        request.setAttribute("discountPercent", discountPercent);
        request.setAttribute("discountAmount", discountAmount);
        request.setAttribute("discountPrice", discountPrice);

        // Chuyển tiếp đến trang JSP hiển thị kết quả
        request.getRequestDispatcher("/views/result.jsp").forward(request, response);
    }
}

