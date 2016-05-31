/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.challenge12.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author kobayashi
 */
public class challenge12_9 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        request.setCharacterEncoding("UTF-8");
             String n = request.getParameter("txtName");
             String t = request.getParameter("txtTell");
             String a = request.getParameter("txtAge");
             String year = request.getParameter("year");
             String mon = request.getParameter("month");
             String day = request.getParameter("day");
             
             int age = Integer.parseInt(a);
             int y = Integer.parseInt(year);
             int m = Integer.parseInt(mon);
             int d = Integer.parseInt(day);
        
        Connection db_con = null;
        PreparedStatement db_st = null;
        
        try {
           Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db","kbys","sw");
            db_st = db_con.prepareStatement("insert into profiles values(?,?,?,?,?)");
            db_st.setInt(1, 6);
            db_st.setString(2, n);
            db_st.setString(3, t);
            db_st.setInt(4, age);
            Calendar cal = Calendar.getInstance();
            cal.set(y, m-1, d);
            Date birthday = cal.getTime();
            db_st.setDate(5, new java.sql.Date(birthday.getTime()));
            db_st.executeUpdate();
            
            db_st.close();
            db_con.close();
        }catch(SQLException e_sql){
            out.print("接続時にエラーが発生しました。"+e_sql.toString());
        }catch(Exception e){
            out.print("接続時にエラーが発生しました。"+e.toString());
        } finally {
            if(db_con != null){
                try{
                    db_con.close();
                }catch(Exception e_con){
                    System.out.print(e_con.getMessage());
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
