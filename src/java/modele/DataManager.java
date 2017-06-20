/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

public class DataManager {

    private String dbURL = "";
    private String dbUserName = "";
    private String dbPassword = "";

    public void init() throws ServletException {

        this.setDbURL("jdbc:oracle:thin:@oracleadudb1.bdeb.qc.ca:1521:gdna10");
        this.setDbUserName("UG214E30");
        this.setDbPassword("W5hx2u");
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        } catch (Exception ex) {
            System.out.println("Initialize connector string");
            ex.printStackTrace();
        }
    }

    public void setDbURL(String dbURL) {
        this.dbURL = dbURL;
    }

    public String getDbURL() {
        return dbURL;
    }

    public void setDbUserName(String dbUserName) {
        this.dbUserName = dbUserName;
    }

    public String getDbUserName() {
        return dbUserName;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword;
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public Connection getConnection() {
        Connection conn = null;

        try {

            conn = DriverManager.getConnection(getDbURL(), getDbUserName(), getDbPassword());
        } catch (SQLException e) {
            System.out.println("Could not connect to DB");
            e.printStackTrace();
        }
        return conn;
    }

    public void putConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Enable to close DB connection");
                e.printStackTrace();
            }
        }
    }

    public ArrayList getListeProduits() {
        ArrayList listeProduits = new ArrayList();
        Connection conn = getConnection();
        if (conn != null) {
            ResultSet rs2 = null;
            Statement statement2 = null;
            try {
                String strQuery = "SELECT ID,NOM, IMAGES,LIENS FROM produit";
                statement2 = conn.createStatement();
                rs2 = statement2.executeQuery(strQuery);
                Produit produit;
                while (rs2.next()) {
                    produit = new Produit();
                    produit.setId(rs2.getString("ID"));
                    produit.setNom(rs2.getString("NOM"));
                    produit.setImage(rs2.getString("IMAGES"));
                    produit.setLien(rs2.getString("LIENS"));
                    listeProduits.add(produit);
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs2.close();
                    statement2.close();
                    conn.close();
                    putConnection(conn);
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
        }
        return listeProduits;
    }

    public ArrayList getListePompes() {
        ArrayList listePompes = new ArrayList();
        Pompe pompe;
        Connection conn = null;

        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,IMAGE,NOM,FORCE,PRIX FROM POMPE";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                while (rs.next()) {
                    pompe = new Pompe();
                    pompe.setId(rs.getString("ID"));
                    pompe.setImage(rs.getString("IMAGE"));
                    pompe.setForce(rs.getString("FORCE"));
                    pompe.setNom(rs.getString("NOM"));
                    pompe.setPrix(rs.getString("PRIX"));
                    listePompes.add(pompe);
                }
            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }//end of finally*/

        }//end of if
        return listePompes;
    }

    public Pompe getDetailsPompe(String idPompe) {
        Pompe pompe = new Pompe();
        Connection conn = null;
        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,NOM,FORCE,DESCRIPTION,IMAGE,PRIX,MARQUE,MODEL,TYPE FROM pompe where ID=\'" + idPompe + "\'";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                rs.next();
                pompe.setId(rs.getString("ID"));
                pompe.setNom(rs.getString("NOM"));
                pompe.setForce(rs.getString("FORCE"));
                pompe.setDescription(rs.getString("DESCRIPTION"));
                pompe.setImage(rs.getString("IMAGE"));

                pompe.setPrix(rs.getString("PRIX"));
                pompe.setMarque(rs.getString("MARQUE"));
                pompe.setModel(rs.getString("MODEL"));
                pompe.setType(rs.getString("TYPE"));

            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }

        }
        return pompe;
    }

    public ArrayList getListeThermo() {
        ArrayList listeThermo = new ArrayList();
        Thermo thermo;
        Connection conn = null;

        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,IMAGE,NOM,FORCE,PRIX FROM thermo";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                while (rs.next()) {
                    thermo = new Thermo();
                    thermo.setId(rs.getString("ID"));
                    thermo.setImage(rs.getString("IMAGE"));
                    thermo.setForce(rs.getString("FORCE"));
                    thermo.setNom(rs.getString("NOM"));
                    thermo.setPrix(rs.getString("PRIX"));
                    listeThermo.add(thermo);
                }
            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }//end of finally*/

        }//end of if
        return listeThermo;
    }

    public Thermo getDetailsThermo(String idThermo) {
        Thermo thermo = new Thermo();
        Connection conn = null;
        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,NOM,FORCE,DESCRIPTION,IMAGE,PRIX,MARQUE,MODEL,TYPE FROM thermo where ID=\'" + idThermo + "\'";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                rs.next();
                thermo.setId(rs.getString("ID"));
                thermo.setNom(rs.getString("NOM"));
                thermo.setForce(rs.getString("FORCE"));
                thermo.setDescription(rs.getString("DESCRIPTION"));
                thermo.setImage(rs.getString("IMAGE"));

                thermo.setPrix(rs.getString("PRIX"));
                thermo.setMarque(rs.getString("MARQUE"));
                thermo.setModel(rs.getString("MODEL"));
                thermo.setType(rs.getString("TYPE"));

            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }

        }
        return thermo;
    }

    public ArrayList getListeSanitation() {
        ArrayList listeSanitation = new ArrayList();
        Sanitation sanitation;
        Connection conn = null;

        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,IMAGE,NOM,PRIX FROM sanitation";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                while (rs.next()) {
                    sanitation = new Sanitation();
                    sanitation.setId(rs.getString("ID"));
                    sanitation.setImage(rs.getString("IMAGE"));
                    sanitation.setNom(rs.getString("NOM"));
                    sanitation.setPrix(rs.getString("PRIX"));
                    listeSanitation.add(sanitation);
                }
            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }//end of finally*/

        }//end of if
        return listeSanitation;

    }

    public Sanitation getDetailsSanitation(String idSanitation) {
        Sanitation sanitation = new Sanitation();
        Connection conn = null;
        conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            Statement statement = null;
            try {
                String strQuery = "SELECT ID,NOM,DESCRIPTION,IMAGE,PRIX,MARQUE,MODEL,TYPE FROM sanitation where ID=\'" + idSanitation + "\'";
                statement = conn.createStatement();
                rs = statement.executeQuery(strQuery);
                rs.next();
                sanitation.setId(rs.getString("ID"));
                sanitation.setNom(rs.getString("NOM"));
                sanitation.setDescription(rs.getString("DESCRIPTION"));
                sanitation.setImage(rs.getString("IMAGE"));

                sanitation.setPrix(rs.getString("PRIX"));
                sanitation.setMarque(rs.getString("MARQUE"));
                sanitation.setModel(rs.getString("MODEL"));
                sanitation.setType(rs.getString("TYPE"));

            }//end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            }

        }
        return sanitation;
    }

}
