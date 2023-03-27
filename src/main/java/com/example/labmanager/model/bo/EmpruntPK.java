package com.example.labmanager.model.bo;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

public class EmpruntPK implements Serializable {
    @Column(name = "CODE")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String code;
    @Column(name = "CIN")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String cin;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EmpruntPK empruntPK = (EmpruntPK) o;

        if (code != null ? !code.equals(empruntPK.code) : empruntPK.code != null) return false;
        if (cin != null ? !cin.equals(empruntPK.cin) : empruntPK.cin != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = code != null ? code.hashCode() : 0;
        result = 31 * result + (cin != null ? cin.hashCode() : 0);
        return result;
    }
}
