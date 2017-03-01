/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import java.util.*;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.IllegalStateException;

/**
 *
 * @author PC
 */
@WebServlet(name = "SanPham", urlPatterns = {"/SanPham"})
public class SanPham extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    static public String maspp="";
    static public String tenspp="";
    static public String motaa  ="";
    static public int soluongg;
    static public String hinhanhh="";
    static public String maloaii="";
    static public String ac="";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
       response.setContentType("text/html;charset=UTF-8");
        ac=request.getParameter("ac");
        PrintWriter out=response.getWriter();
        if(ac.equals("0")){
            maspp =request.getParameter("maspp");
            try {
                Statement st=Controller.ConnecDB.ConnecDB().createStatement();
                ResultSet rs=st.executeQuery("select * from `sanpham` where maSP='"+maspp+"'");
                if(rs.next()){
                    tenspp=rs.getString(2);
                    motaa=rs.getString(3);
                    soluongg=rs.getInt(4);
                    hinhanhh=rs.getString(5);
                    maloaii=rs.getString(6);
                }else{
                response.sendRedirect("error_pagesp.jsp");
                    
                }response.sendRedirect("quantrisp.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(xuat.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else if(ac.equals("1")){
            maspp=request.getParameter("maspp");
            tenspp=request.getParameter("tenspp");
            motaa=request.getParameter("motaa");
            soluongg=Integer.parseInt(request.getParameter("soluongg"));
            hinhanhh= request.getParameter("hinhanhh");
            maloaii=request.getParameter("maloaii");
            try {
                PreparedStatement pr=Controller.ConnecDB.ConnecDB().prepareStatement("insert into `sanpham` values(?,?,?,?,?,?)");
                pr.setString(1, maspp);
                pr.setString(2, tenspp);
                pr.setString(3, motaa);
                pr.setInt(4, soluongg);
                pr.setString(5, hinhanhh);
                pr.setString(6, maloaii);

                pr.executeUpdate();
                response.sendRedirect("quantrisp.jsp");
            } catch (Exception ex) {
            }  
            }else if(ac.equals("2")){
                   
             maspp=request.getParameter("maspp");
            tenspp=request.getParameter("tenspp");
            motaa=request.getParameter("motaa");
            soluongg=Integer.parseInt(request.getParameter("soluongg"));
            hinhanhh= request.getParameter("hinhanhh");
            maloaii=request.getParameter("maloaii");
            try {
                PreparedStatement pr=Controller.ConnecDB.ConnecDB().prepareStatement("update `sanpham` set  `tenSP`=? , moTa = ?, soLuong = ? , hinhAnh=?, loaiSanPham_maLSP=? where maSP=?");
                pr.setString(1, tenspp);
                pr.setString(2, motaa);
                pr.setInt(3, soluongg);
                pr.setString(4, hinhanhh);
                pr.setString(5, maloaii);
                 pr.setString(6, maspp);
                pr.executeUpdate();
                 Statement st = Controller.ConnecDB.ConnecDB().createStatement();
                    ResultSet rs = st.executeQuery("select * from `sanpham` where maSP='" + maspp + "'");
                    if (rs.next()) {
                pr.setString(2, tenspp);
                pr.setString(3, motaa);
                pr.setInt(4, soluongg);
                pr.setString(5, hinhanhh);
                pr.setString(6, maloaii);
                    } else {
                               response.sendRedirect("error_pagesp.jsp");
                    
                    }response.sendRedirect("quantrisp.jsp");
                    }catch(Exception ex){
                        out.println(ex);
                    }
            }else if(ac.equals("3")){
                    String  masp = request.getParameter("maspp");
                     try {

                    PreparedStatement pr = Controller.ConnecDB.ConnecDB().prepareStatement("delete from `sanpham` where maSP= ?");
                    pr.setString(1, maspp);
                    pr.executeUpdate();
                    tenspp="";
                    motaa="";
                    soluongg=Integer.parseInt("0");
                    hinhanhh="";
                    maloaii="";
                    response.sendRedirect("quantrisp.jsp");
                } catch (Exception ex) {

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
         try {
             processRequest(request, response);
         } catch (SQLException ex) {
             Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
         }
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
         try {
             processRequest(request, response);
         } catch (SQLException ex) {
             Logger.getLogger(SanPham.class.getName()).log(Level.SEVERE, null, ex);
         }
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
