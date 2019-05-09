package Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Route_Info")
public class AddRoute 
{
    private String name;
    @Id
    private String rid;
    private String addFrom;
    private String addTo;
    
    public AddRoute(String name , String rid , String addFrom , String addTo )
    {
        this.name = name;
        this.rid = rid;
        this.addFrom = addFrom;
        this.addTo = addTo;
    }
    
    public AddRoute(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    public String getAddFrom() {
        return addFrom;
    }

    public void setAddFrom(String addFrom) {
        this.addFrom = addFrom;
    }

    public String getAddTo() {
        return addTo;
    }

    public void setAddTo(String addTo) {
        this.addTo = addTo;
    }
    
}
