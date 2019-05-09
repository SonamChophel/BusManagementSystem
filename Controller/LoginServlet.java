package Controller;

import Model.Login;
import Model.LoginDAO;
import Model.SignUp;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String name = request.getParameter("nm");
            String uid = request.getParameter("uid");
            String pwd = request.getParameter("pwd");
            String acctype = request.getParameter("type");            
            Login l = new Login(name,uid,pwd,acctype);
            LoginDAO ld  = new LoginDAO();
            SignUp s = ld.search(l); 
            
            HttpSession session1 = request.getSession();
            session1.setAttribute("uname", name);
            session1.setAttribute("uid", uid);
            session1.setAttribute("mail",s.getEmail());
            session1.setAttribute("type",acctype);
            
            if(l.getName().equals(s.getName()) && l.getPassword().equals(s.getPassword()))
            {
                if(l.getAcctype().equals("admin") && s.getAcctypes().equals("admin"))
               {
                   RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                   rd.forward(request, response);
               }
               else if( l.getAcctype().equals("student") && s.getAcctypes().equals("student") )
               {   
                   RequestDispatcher rd = request.getRequestDispatcher("student.jsp");
                   rd.forward(request, response);
               }
               else if( l.getAcctype().equals("staff") && s.getAcctypes().equals("staff") )
               {     
                   RequestDispatcher rd = request.getRequestDispatcher("staff.jsp");
                   rd.forward(request, response);
               }
               else if( l.getAcctype().equals("faculty") && s.getAcctypes().equals("faculty") )
               {
                   RequestDispatcher rd = request.getRequestDispatcher("faculty.jsp");
                   rd.forward(request, response);
               }
            }
                
            else
            {
                RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
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
