package Controller;

import Model.AddBuses;
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

public class UpdateBusesServlet1 extends HttpServlet 
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
            AddBuses ab = null;
            String bid = request.getParameter("bid");
            String bno = request.getParameter("bno");
            String brt = request.getParameter("brt");
            String bsft = request.getParameter("bsft");
            String arrt = request.getParameter("arrt");
            String dept = request.getParameter("dept");
            
//            System.out.println(bid);
//            System.out.println(bno);
//            System.out.println(brt);
//            System.out.println(bsft);
//            System.out.println(arrt);
//            System.out.println(dept);
            
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                session = sf.openSession();
                Transaction tx = session.beginTransaction();
                
                ab = (AddBuses)session.get(AddBuses.class,bid);
                
                
                System.out.println(ab.getBid());
                System.out.println(ab.getBno());
                System.out.println(ab.getBrt());
                System.out.println(ab.getBsft());
                System.out.println(ab.getArrt());
                System.out.println(ab.getDept());
                
                
                
                
                ab.setBno(bno);
                ab.setBrt(brt);
                ab.setBsft(bsft);
                ab.setArrt(arrt);
                ab.setDept(dept);
                session.update(ab);
                
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
