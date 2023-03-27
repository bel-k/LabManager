package com.example.labmanager.model.bo;

import javax.persistence.*;
import java.sql.Date;

@Entity
@IdClass(EmpruntPK.class)
public class Emprunt {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "CODE")
    private String code;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "CIN")
    private String cin;
    @Basic
    @Column(name = "DATEEMPRUNT")
    private Date dateemprunt;
    @Basic
    @Column(name = "DATERETOUR")
    private Date dateretour;
    @ManyToOne
    @JoinColumn(name = "CIN", referencedColumnName = "CIN", nullable = false)
    private Adherent adherentByCin;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public Date getDateemprunt() {
        return dateemprunt;
    }

    public void setDateemprunt(Date dateemprunt) {
        this.dateemprunt = dateemprunt;
    }

    public Date getDateretour() {
        return dateretour;
    }

    public void setDateretour(Date dateretour) {
        this.dateretour = dateretour;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Emprunt emprunt = (Emprunt) o;

        if (code != null ? !code.equals(emprunt.code) : emprunt.code != null) return false;
        if (cin != null ? !cin.equals(emprunt.cin) : emprunt.cin != null) return false;
        if (dateemprunt != null ? !dateemprunt.equals(emprunt.dateemprunt) : emprunt.dateemprunt != null) return false;
        if (dateretour != null ? !dateretour.equals(emprunt.dateretour) : emprunt.dateretour != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = code != null ? code.hashCode() : 0;
        result = 31 * result + (cin != null ? cin.hashCode() : 0);
        result = 31 * result + (dateemprunt != null ? dateemprunt.hashCode() : 0);
        result = 31 * result + (dateretour != null ? dateretour.hashCode() : 0);
        return result;
    }

    public Adherent getAdherentByCin() {
        return adherentByCin;
    }

    public void setAdherentByCin(Adherent adherentByCin) {
        this.adherentByCin = adherentByCin;
    }
}
