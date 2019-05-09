package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class LoginDAO 
{    
    public SignUp search(Login l)
    {
        
        SignUp sup = null;
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
            sup = (SignUp)session.get(SignUp.class,l.getUid());
            
//            System.out.println("CheckPoint1");
//            System.out.println(sup.getName());
//            System.out.println(sup.getPassword());
//            System.out.println(sup.getAcctypes());
            
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

        return sup;
    }
}
