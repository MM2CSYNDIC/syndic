package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * Created by leite_2 on 01/03/2016.
 */
@SuppressWarnings("serial")
public class Message extends BaseObject{
    private int id;
    private String userNameDestinataire;
    private String userNameRecepteur;
    private String content;
    private String object;

    public Message( String userNameDestinataire,String userNameRecepteur, String content, String object) {
        super();
        this.userNameDestinataire = userNameDestinataire;
        this.userNameRecepteur = userNameRecepteur;
        this.content = content;
        this.object = object;
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

    public String getUserNameRecepteur() {
        return userNameRecepteur;
    }

    public void setUserNameRecepteur(String userNameRecepteur) {
        this.userNameRecepteur = userNameRecepteur;
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
