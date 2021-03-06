/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Porcion;
import modelos.Sabor;

/**
 *
 * @author Usuario
 */
public class creatupastel extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/creatupastel.jsp");
        List<Sabor> sabores = listaSabores();
        List<Porcion> porciones = listaPorciones();
        request.setAttribute("sabores", sabores);
        request.setAttribute("porciones", porciones);
         rd.forward(request, response);
    }
    
    List<Sabor> listaSabores() {
        List<Sabor> lista = new ArrayList<Sabor>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/endulza_tu_mundo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM sabor");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                String nombre = resultados.getString("nombre");
                Sabor s = new Sabor();
                s.nombre = nombre;
                lista.add(s);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(creatupastel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(creatupastel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
    
    List<Porcion> listaPorciones() {
        List<Porcion> lista = new ArrayList<Porcion>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/endulza_tu_mundo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM porciones");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                String cantidad = resultados.getString("cantidad");
                Porcion p = new Porcion();
                p.cantidad = cantidad;
                lista.add(p);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(creatupastel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(creatupastel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
