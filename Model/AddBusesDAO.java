package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class AddBusesDAO 
{
    public void save(AddBuses ab)
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
            session.save(ab);
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
