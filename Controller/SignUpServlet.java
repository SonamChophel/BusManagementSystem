package Controller;

import Model.SignUp;
import Model.SignUpDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String name = request.getParameter("nm");
            String uid = request.getParameter("uid");
            String email = request.getParameter("mail");
            String acctypes = request.getParameter("type");
            String pass = request.getParameter("pwd");
            
//            System.out.println(acctypes);  
            
            SignUp s = new SignUp(name,uid,email,pass,acctypes);
            SignUpDAO sd  = new SignUpDAO();
            sd.save(s);
            
            if( acctypes.equals("admin"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
            }
            else if( acctypes.equals("staff"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("staff.jsp");
                rd.forward(request, response);
            }
            else if( acctypes.equals("student"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("student.jsp");
                rd.forward(request, response);
            }
            else if( acctypes.equals("faculty"))
            {
                RequestDispatcher rd = request.getRequestDispatcher("faculty.jsp");
                rd.forward(request, response);
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
