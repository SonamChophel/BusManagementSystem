package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BusSchedule 
{
    @Id
    private String bid;
    private String driname;
    private String driid;
    private String pno;
    private String bno;
    private String brt;
    private String bsft;
    private String arrt;
    private String dept;
    
    public BusSchedule(){}
    
    public BusSchedule(String bid , String driid , String driname , String pno , String bno , String brt , String bsft , String arrt , String dept)
    {
        this.bid = bid;
        this.driname = driname;
        this.driid = driid;
        this.pno = pno;
        this.bno = bno;
        this.brt = brt;
        this.bsft = bsft;
        this.arrt = arrt;
        this.dept = dept;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getDriname() {
        return driname;
    }

    public void setDriname(String driname) {
        this.driname = driname;
    }

    public String getDriid() {
        return driid;
    }

    public void setDriid(String driid) {
        this.driid = driid;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }

    public String getBno() {
        return bno;
    }

    public void setBno(String bno) {
        this.bno = bno;
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
