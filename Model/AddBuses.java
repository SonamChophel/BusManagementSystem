package Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bus_Info")
public class AddBuses
{
    private String bno;
    @Id
    private String bid;
    private String brt;
    private String bsft;
    private String arrt;
    private String dept;
    
    public AddBuses(String bid , String bno , String brt , String bsft , String arrt , String dept )
    {
        this.bid = bid;
        this.bno = bno;
        this.brt = brt;
        this.bsft = bsft;
        this.arrt = arrt;
        this.dept = dept;
    }
    
    public AddBuses(){}

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getBrt() {
        return brt;
    }

    public void setBrt(String brt) {
        this.brt = brt;
    }

    public String getBsft() {
        return bsft;
    }

    public void setBsft(String bsft) {
        this.bsft = bsft;
    }

    public String getArrt() {
        return arrt;
    }

    public void setArrt(String arrt) {
        this.arrt = arrt;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
    
    
}
