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

    private DataManager dm = new DataManager();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Sanitation sanitition;
        Thermo thermo;
        String url = "";
        //url = "/test.jsp";

        HttpSession session = request.getSession();
        if (session == null) {
            response.sendRedirect("http://localhost:82/error.html");
        }

        //Créer la liste d'achat
        ArrayList listeAchat = (ArrayList) session.getAttribute("listeAchat");
        String action = request.getParameter("action");
        if(action == null) action = "";

        if (!action.equals("COMMANDER")){

            if (action.equals("SUPPRIMER")) {
                //on récupère l'indice de l'item à supprimer  
                String del = request.getParameter("suppIndex");
                //on supprime l'item du panier
                int d = (new Integer(del)).intValue();
                listeAchat.remove(d);
                // si clic sur ajouter au panier                    
            } else if (action.equals("ADDPOMPE")) {
                String pompeId = request.getParameter("id");
                Pompe pompe = new Pompe();
                dm.init();
                pompe = dm.getDetailsPompe(pompeId);
                boolean match = true;
                //si panier inexistant on le créer
                if (listeAchat == null) {
                    //on crée le panier
                    listeAchat = new ArrayList();
                    //on ajoute le premier item
                    pompe.setQte(1);
                    listeAchat.add(pompe);
                } else {
                    //on vérifie si le CD est déjà dans le panier
                    if (listeAchat.contains(pompe)) {
                        //on va modifier la quantité en lui ajoutantant la
                        // nouvelle quantité
                        pompe.setQte(pompe.getQte() + 1);
                        //on replace l'item dans le panier
                        listeAchat.add(pompe);
                        match = true;
                    }
                    if (!match) //on ajoute l'item au panier
                    {
                        listeAchat.add(pompe);
                    }
                }
            }
            session.setAttribute("listeAchat", listeAchat);
            //Envoie l'information à la page setPanier
            request.setAttribute("listeAchat", listeAchat);
            url = "/setPanier.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("listeAchat", listeAchat);
            url = "/test.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        }
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
}
