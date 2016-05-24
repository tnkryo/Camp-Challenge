/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.challenge9.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import java.text.*;
import java.io.*;

/**
 *
 * @author kobayashi
 */
public class challenge9_10 extends HttpServlet {

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
        try {
            File txt = new File("C:\\Users\\kobayashi\\Downloads\\test.txt");
            FileWriter fwa = new FileWriter (txt,true);
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
            String sdate = sdf.format(date);
            BufferedWriter bw = new BufferedWriter(fwa);
            bw.write(sdate+"　開始");
            bw.newLine();
            TreeMap<String, String> tm = new TreeMap<String, String>();
            tm.put("D", "DDD");
            tm.put("A", "AAA");
            tm.put("C", "CCC");
            tm.put("E", "EEE");
            tm.put("B", "BBB");
            tm.put("D", "ddd");
            Iterator<String> it = tm.keySet().iterator();
            while (it.hasNext()) {
                String key = it.next();
                out.println(key + "/" + tm.get(key));
            }
            bw.write(sdate+"　終了");
            bw.close();
            FileReader fr = new FileReader(txt);
            BufferedReader br = new BufferedReader(fr);
            String str;
            while((str = br.readLine()) != null){
            out.print(str+"<br>");
            }
            br.close();
        } finally {
            out.close();
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
