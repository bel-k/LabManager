package com.example.labmanager.model.bo;

import javax.persistence.*;

@Entity
public class Adherent {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "CIN")
    private String cin;
    @Basic
    @Column(name = "NOM")
    private String nom;
    @Basic
    @Column(name = "PRENOM")
    private String prenom;

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Adherent adherent = (Adherent) o;

        if (cin != null ? !cin.equals(adherent.cin) : adherent.cin != null) return false;
        if (nom != null ? !nom.equals(adherent.nom) : adherent.nom != null) return false;
        if (prenom != null ? !prenom.equals(adherent.prenom) : adherent.prenom != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cin != null ? cin.hashCode() : 0;
        result = 31 * result + (nom != null ? nom.hashCode() : 0);
        result = 31 * result + (prenom != null ? prenom.hashCode() : 0);
        return result;
    }
}
