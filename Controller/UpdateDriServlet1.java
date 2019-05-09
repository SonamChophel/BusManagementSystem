package Controller;

import Model.AddDrivers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UpdateDriServlet1 extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            Configuration cf = null;
            SessionFactory sf = null;
            Session session = null;
            
            String name = request.getParameter("drinm");
            String driid = request.getParameter("driid");
            String addr = request.getParameter("addr");
            String pno = request.getParameter("pno");
            String mail = request.getParameter("eml");
            
            System.out.println(name);
            System.out.println(driid);
            System.out.println(addr);
            System.out.println(pno);
            System.out.println(mail);
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                session = sf.openSession();
                Transaction tx = session.beginTransaction();
                
                AddDrivers ad = (AddDrivers)session.get(AddDrivers.class,driid);
                ad.setName(name);
                ad.setAddress(addr);
                ad.setPnumber(pno);
                ad.setEmail(mail);
                session.update(ad);
                
                RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
                tx.commit();
            }
            catch(Exception ee)
            {
                ee.printStackTrace();
            }
            finally
            {
                session.close();
                sf.close();
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
