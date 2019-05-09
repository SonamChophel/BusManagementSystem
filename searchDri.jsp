<%@page import="Model.AddDrivers"%>
<%@page import="org.hibernate.Query"%>
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
                border: 1px solid black;
                font-size: 25px;
                position: relative;
                top: 30px;
                border-collapse:collapse;
            }
            #dtable th , #dtable td
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
                   
                    Query query = ses.createQuery("from AddDrivers where driid like '"+val+"%' ");
                    List<AddDrivers> record = query.list();

                    
                    out.print("<center><table id='dtable'>");
                    out.print("<tr><th>Sl.No</th><th>Driver ID</th><th>Driver Name</th><th>Address</th><th>Email</th><th>Contact</th></tr>");

                    int i = 1;
                    for(AddDrivers ad : record )
                    {
                        out.print("<tr> <td>"+i+"</td>  <td>"+ad.getDriid()+"</td> <td>"+ad.getName()+"</td> <td>"+ad.getAddress()+"</td> <td>"+ad.getEmail()+"</td> <td>"+ad.getPnumber()+"</td></tr>");
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
