package com.example.labmanager.model.bo;

import javax.persistence.*;

@Entity
public class Livre {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ISBN")
    private String isbn;
    @Basic
    @Column(name = "TITRE")
    private String titre;

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Livre livre = (Livre) o;

        if (isbn != null ? !isbn.equals(livre.isbn) : livre.isbn != null) return false;
        if (titre != null ? !titre.equals(livre.titre) : livre.titre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = isbn != null ? isbn.hashCode() : 0;
        result = 31 * result + (titre != null ? titre.hashCode() : 0);
        return result;
    }
}
