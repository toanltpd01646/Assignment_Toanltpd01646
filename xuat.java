/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author PC
 */
@WebServlet(name = "xuat", urlPatterns = {"/xuat"})
public class xuat extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    static public String makhh = "";
    static public String tenkhh = "";
    static public String vaitroo = "";
    static public String diachii = "";
    static public String sdtt = "";
    static public String matkhauu = "";
    static public String ac = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            makhh = request.getParameter("makhh");
            ac = request.getParameter("ac");
            if (ac.equals("0")) {
                try {
                    /* TODO output your page here. You may use following sample code. */
                     Statement st = Controller.ConnecDB.ConnecDB().createStatement();
                    ResultSet rs = st.executeQuery("select * from `khachhang` where maKH='" + makhh + "'");

                    if (rs.next()) {
                        tenkhh = rs.getString(2);
                        vaitroo = rs.getString(3);              
                        diachii = rs.getString(4);
                        sdtt = rs.getString(5);
                        matkhauu = rs.getString(6);
                    } else 
                        {
                        response.sendRedirect("error_page.jsp");
                    }
                    
                    response.sendRedirect("quantri.jsp");

                } catch (Exception ex) {
                    Logger.getLogger(xuat.class.getName()).log(Level.SEVERE, null, ex);
                }
                ///neu trang thai khac 0
            } else if (ac.equals("1")) {

                String maKH = request.getParameter("makhh");
                String tenKH = request.getParameter("tenkhh");
                String vaitro = request.getParameter("vaitroo");
                String diachi = request.getParameter("diachii");
                String sdt = request.getParameter("sdtt");
                String matkhau = request.getParameter("matkhauu");
                try {

                   PreparedStatement pr=Controller.ConnecDB.ConnecDB().prepareStatement("INSERT INTO `khachhang`(`maKH`, `tenKH`, `vaiTro`, `diaChi`, `SDT`, `matKhau`) VALUES (?,?,?,?,?,?)");
            pr.setString(1, maKH);
            pr.setString(2, tenKH);
            pr.setString(3, vaitro);
            pr.setString(4, diachi);
            pr.setString(5, sdt);
            pr.setString(6, matkhau);

            pr.executeUpdate();
                    response.sendRedirect("quantri.jsp");
                } catch (Exception ex) {

                }
            } else if (ac.equals("2")) {
                String maKH = request.getParameter("makhh");
                String tenKH = request.getParameter("tenkhh");
                String vaitro = request.getParameter("vaitroo");
                String diachi = request.getParameter("diachii");
                String sdt = request.getParameter("sdtt");
                String matkhau = request.getParameter("matkhauu");

                try {

                    PreparedStatement pr = Controller.ConnecDB.ConnecDB().prepareStatement("UPDATE `khachhang` SET `tenKH`=?,`vaiTro`=?,`diaChi`=?,`SDT`=?,`matKhau`=? WHERE `maKH`=?");
                    pr.setString(1, tenKH);
                    pr.setString(2, vaitro);
                    pr.setString(3, diachi);
                    pr.setString(4, sdt);
                    pr.setString(5, matkhau);
                    pr.setString(6, maKH);

                    pr.executeUpdate();

                    Statement st = Controller.ConnecDB.ConnecDB().createStatement();
                    ResultSet rs = st.executeQuery("select * from `khachhang` where maKH='" + makhh + "'");
                    if (rs.next()) {
                        tenkhh = rs.getString(2);
                        vaitroo = rs.getString(3);
                        diachii = rs.getString(4);
                        sdtt = rs.getString(5);
                        matkhauu = rs.getString(6);
                    } else {
                        response.sendRedirect("error_page.jsp");
                    }

                    response.sendRedirect("quantri.jsp");
                } catch (Exception ex) {
                    out.println(ex);
                }

            } else if (ac.equals("3")) {
                makhh = request.getParameter("makhh");

                try {

                    PreparedStatement pr = Controller.ConnecDB.ConnecDB().prepareStatement("DELETE FROM `khachhang` WHERE maKH = ?");
                    pr.setString(1, makhh);
                     pr.executeUpdate();
                    makhh = "";
                    tenkhh = "";
                    vaitroo = "";
                    diachii = "";
                    sdtt = "";        
                    matkhauu = "";
                    response.sendRedirect("quantri.jsp");
                } catch (Exception ex) {

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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
