package Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Driver_Info")
public class AddDrivers 
{
    private String name;
    @Id
    private String driid;
    private String address;
    private String pnumber;
    private String email;
    
    public AddDrivers(String name , String driid , String address , String pnumber , String email )
    {
        this.name = name;
        this.driid = driid;
        this.address = address;
        this.pnumber = pnumber;
        this.email = email;
    }

    
    public AddDrivers(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDriid() {
        return driid;
    }

    public void setDid(String did) {
        this.driid = did;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPnumber() {
        return pnumber;
    }

    public void setPnumber(String pnumber) {
        this.pnumber = pnumber;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
