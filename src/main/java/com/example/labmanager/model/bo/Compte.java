package com.example.labmanager.model.bo;

import javax.persistence.*;

@Entity
public class Compte {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "CIN")
    private String cin;
    @Basic
    @Column(name = "PASSWORD")
    private String password;

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Compte compte = (Compte) o;

        if (cin != null ? !cin.equals(compte.cin) : compte.cin != null) return false;
        if (password != null ? !password.equals(compte.password) : compte.password != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cin != null ? cin.hashCode() : 0;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }
}
