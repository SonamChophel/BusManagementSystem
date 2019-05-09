package Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Login 
{
    @Id
    private String uid;
    private String name;
    private String password;
    private String acctype;
    
    public Login(String name , String uid , String password , String acctype)
    {
        this.name = name;
        this.uid = uid;
        this.password = password;
        this.acctype = acctype;
    }
    
    Login(){}
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAcctype() {
        return acctype;
    }

    public void setAcctype(String acctype) {
        this.acctype = acctype;
    }
    
}
