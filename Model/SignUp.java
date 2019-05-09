package Model;

import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SignUp 
{
    @Id
    private String uid;
    private String name;
    private String email;
    private String password;
    private String acctypes;
    
    public SignUp(String name ,String uid , String email , String password , String acctypes)
    {
        this.name = name;
        this.uid = uid;
        this.email = email;
        this.password = password;
        this.acctypes = acctypes;
    }
    
    SignUp(){}

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

    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAcctypes() {
        return acctypes;
    }

    public void setAcctypes(String acctypes) {
        this.acctypes = acctypes;
    }   
}
