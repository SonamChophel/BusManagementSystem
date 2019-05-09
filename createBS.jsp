<%@page import="Model.AddBuses"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="Model.AddDrivers"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Driver</title>
        <style>
            #cbForm
            {
                margin-top: 40px;
                background-color: darkcyan;
                padding: 20px;
                border-radius: 10px;
                color: white;
            }
            
            #cbForm form select
            {
                text-align: center;
                height: 50px;
                width: 400px;
                margin: 10px;
                outline: none;
                border-radius: 10px; 
            }
            
/*            #cForm form select[name="bid"]
            {
                margin-left: 50px;
            }
            #cForm form select[name="driid"]
            {
                margin-left: 40px;
            }
            #cForm form select[name="dname"]
            {
                margin-left: 35px;
            }
            #cForm form select[name="pno"]
            {
                margin-left: 20px;
            }
            #cForm form select[name="bno"]
            {
                margin-left: 30px;
            }
            #cForm form select[name="brt"]
            {
                margin-left: 40px;
            }
            #cForm form select[name="bsft"]
            {
                margin-left: 30px;
            }
            #cForm form select[name="arrt"]
            {
                margin-left: 30px;
            }
            #cForm form select[name="dept"]
            {
                margin-left: 30px;
            }*/
            
            
            #cbForm form input[type="submit"]
            {
                font-size: 20px;
                color: white;
                background-color: crimson;
                border-radius: 10px;
                height: 45px;
                width: 150px;
                outline: none;
                border: none;
            }
        </style>
    </head>
    <body>
        <%
            Configuration cf = null;
            SessionFactory sf = null;
            Session ses = null;
            List<AddBuses> rec1 = null;
            List<AddDrivers> rec2= null;
            
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                ses = sf.openSession();
                Transaction tx = ses.beginTransaction();
                
                Criteria criteria1 = ses.createCriteria(AddBuses.class);
                Criteria criteria2 = ses.createCriteria(AddDrivers.class);
                
                rec1 = criteria1.list();
                rec2 = criteria2.list();

                out.print("<center><div id='cbForm'><form action='bScheduleServlet' method='post'>");
                
                out.print("BUS ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name='bid'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getBid()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("DRIVER ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name='driid'>");
                for(AddDrivers ad : rec2)
                {
                    out.print("<option >"+ad.getDriid()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("DRIVER NAME :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name='dname'>");
                for(AddDrivers ad : rec2)
                {
                    out.print("<option>"+ad.getName()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("DRIVER CONTACT : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='pno'>");
                for(AddDrivers ad : rec2)
                {
                    out.print("<option >"+ad.getPnumber()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("BUS NUMBER : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='bno'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getBno()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("BUS ROUTE : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='brt'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getBrt()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("BUS SHIFT : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='bsft'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getBsft()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("ARRIVAL TIME : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='arrt'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getArrt()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("DEPARTUER TIME : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='dept'>");
                for(AddBuses ab : rec1)
                {
                    out.print("<option>"+ab.getDept()+"</option>");
                }
                out.print("</select><br>");
                
                out.print("<input type='submit' value='Create'>");
                out.print("</form></div></center>");
                tx.commit();
                
            }
            catch(Exception ee)
            {
                System.out.println(ee);
            }
            finally
            {
                ses.close();
                sf.close();
            }
 
        %>
    </body>
</html>
