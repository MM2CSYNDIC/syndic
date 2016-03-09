package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * Created by leite_2 on 01/03/2016.
 */
@SuppressWarnings("serial")
public class Message extends BaseObject{
    private int id;
    private String userNameDestinataire;
    private String userNameEmetteur;
    private String content;
    private String object;

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    private String statut;

    public Message() {
    }

    public Message( String userNameDestinataire,String userNameEmetteur, String content, String object, String statut) {
        super();
        this.userNameDestinataire = userNameDestinataire;
        this.userNameEmetteur = userNameEmetteur;
        this.content = content;
        this.object = object;
        this.statut = statut;
    }

    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserNameEmetteur() {
        return userNameEmetteur;
    }

    public void setUserNameEmetteur(String userNameEmetteur) {
        this.userNameEmetteur = userNameEmetteur;
    }

    public String getUserNameDestinataire() {
        return userNameDestinataire;
    }

    public void setUserNameDestinataire(String userNameDestinataire) {
        this.userNameDestinataire = userNameDestinataire;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "";
    }

    @Override
    public boolean equals(Object o) {
        return false;
    }

    @Override
    public int hashCode() {
        return 0;
    }
}
