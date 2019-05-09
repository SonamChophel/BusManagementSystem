package Controller;

import Model.BusSchedule;
import Model.BusScheduleDAO;
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

public class EditBusSchedule extends HttpServlet 
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
            
            
            String bid = request.getParameter("bid");
            String driid = request.getParameter("driid");
            String driname = request.getParameter("drinm");
            String pno = request.getParameter("pno");
            String bno = request.getParameter("bno");
            String brt = request.getParameter("brt");
            String bsft = request.getParameter("bshft");
            String arrt = request.getParameter("arrt");
            String dept = request.getParameter("dept");
            
//            System.out.println(bid);
//            System.out.println(driid);
//            System.out.println(driname);
//            System.out.println(pno);
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
                
                BusSchedule bs = (BusSchedule)session.get(BusSchedule.class,bid);
                bs.setBno(bno);
                bs.setDriname(driname);
                bs.setDriid(driid);
                bs.setBrt(brt);
                bs.setBsft(bsft);
                bs.setArrt(arrt);
                bs.setPno(pno);
                bs.setDept(dept);
                session.update(bs);
                
                RequestDispatcher rd = request.getRequestDispatcher("staff.jsp");
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
