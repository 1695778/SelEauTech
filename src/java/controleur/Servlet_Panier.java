/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modele.DataManager;
import modele.Pompe;
import modele.Sanitation;
import modele.Thermo;

/**
 *
 * @author 1695809
 */
public class Servlet_Panier extends HttpServlet {

    private DataManager dm;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Sanitation sanitition;
        Thermo thermo;

        HttpSession session = request.getSession();
        if (session == null) {
            response.sendRedirect("http://localhost:82/error.html");
        }

        //Créer la liste d'achat
        ArrayList listeAchat = (ArrayList) session.getAttribute("listeAchat");

        String action = request.getParameter("action");

        ///////////////////// POMPE \\\\\\\\\\\\\\\\\\\\\
        //récupère l'action. 
        //Seulement add pour le moment
        String pompeId = request.getParameter("id");
        String message = action + " " + pompeId;

        Pompe pompe = new Pompe();

        this.init();
        pompe = dm.getDetailsPompe(pompeId);

        request.setAttribute("message", pompe.getPrix());

//        if (action.equals("ADDPOMPE")) {
//            
//
//        }
        String url = "/test.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public void init() throws ServletException {

        dm = new DataManager();
        dm.setDbURL("jdbc:oracle:thin:@oracleadudb1.bdeb.qc.ca:1521:gdna10");
        dm.setDbUserName("UG214E30");
        dm.setDbPassword("W5hx2u");
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (Exception ex) {
            System.out.println("Initialize connector string");
            ex.printStackTrace();
        }
    }
}
