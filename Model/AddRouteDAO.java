package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class AddRouteDAO 
{
    public void save(AddRoute ar)
    {
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
        try
        {
            cf = new Configuration();
            cf.configure("cfgpackage/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            session.save(ar);
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
