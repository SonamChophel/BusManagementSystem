<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="Model.AddBuses"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Bus</title>
        <style>
            #btable
            {
                border: 1px solid black;
                font-size: 25px;
                position: relative;
                top: 30px;
                border-collapse:collapse;
            }
            #btable th , #btable td
            {
                padding: 5px 15px 5px 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <%
            String val = request.getParameter("x");
            
            System.out.println(val);
            
            if(val==null || val.trim().equals("") )
            {
                 
            }
            else
            {
                Configuration cf = null;
                SessionFactory sf = null;
                Session ses = null;

                try
                {
                    cf = new Configuration();
                    cf.configure("cfgpackage/hibernate.cfg.xml");
                    sf = cf.buildSessionFactory();
                    ses = sf.openSession();
                    Transaction tx = ses.beginTransaction();
                   
                    Query query = ses.createQuery("from AddBuses where bid like '"+val+"%' ");
                    List<AddBuses> record = query.list();

                    out.print("<center><table id='dtable'>");
                    out.print("<tr><th>Sl.No</th><th>Bus ID</th><th>Bus Number</th><th>Bus Route</th><th>Bus Shift</th><th>Arrival Time</th><th>Departure Time</th></tr>");

                    int i = 1;
                    for(AddBuses ab : record )
                    {
                        out.print("<tr> <td>"+i+"</td>  <td>"+ab.getBid()+"</td> <td>"+ab.getBno()+"</td> <td>"+ab.getBrt()+"</td> <td>"+ab.getBsft()+"</td><td>"+ab.getArrt()+"</td> <td>"+ab.getDept()+"</td></tr>");
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
                }
        %>
    </body>
</html>
