<%@page import="Model.BusSchedule"%>
<%@page import="org.hibernate.Criteria"%>
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
            #dtable
            {
                border: 1px solid white;
                font-size: 15px;
                position: relative;
                top: 70px;
                border-collapse:collapse;
            }
            #dtable th , #dtable td
            {
                color: white;
                padding: 5px 15px 5px 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%
            Configuration cf = null;
            SessionFactory sf = null;
            Session ses = null;
            List<BusSchedule> record = null;
            try
            {
                cf = new Configuration();
                cf.configure("cfgpackage/hibernate.cfg.xml");
                sf = cf.buildSessionFactory();
                ses = sf.openSession();
                Transaction tx = ses.beginTransaction();

                Criteria criteria = ses.createCriteria(BusSchedule.class);
                record = criteria.list();               

                out.print("<center><table id='dtable'>");
                out.print("<tr><th>Sl.No</th><th>Bus ID</th> <th>Driver ID</th> <th>Driver Name</th> <th>Driver Contact</th> <th>Bus Number</th> <th>Bus Route</th> <th>Bus Shift</th> <th>Arrival Time</th><th>Departure Time</th></tr>");

                int i = 1;
                for(BusSchedule bs : record )
                {
                    out.print("<tr> <td>"+i+"</td>  <td>"+bs.getBid()+"</td> <td>"+bs.getDriid()+"</td> <td>"+bs.getDriname()+"</td> <td>"+bs.getPno()+"</td> <td>"+bs.getBno()+"</td> <td>"+bs.getBrt()+"</td> <td>"+bs.getBsft()+"</td> <td>"+bs.getArrt()+"</td> <td>"+bs.getDept()+"</td> </tr>");
                    i++;
                }

                out.print("</table></center>");
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
