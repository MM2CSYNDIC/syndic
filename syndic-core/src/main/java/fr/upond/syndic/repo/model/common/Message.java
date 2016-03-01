package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * Created by leite_2 on 01/03/2016.
 */
public class Message extends BaseObject{
    private int id;
    private String userNameDestinataire;
    private String userNameRecepteur;
    private String String;
    private String content;
    private String object;

    public Message(int id, java.lang.String userNameDestinataire, java.lang.String userNameRecepteur, java.lang.String string, java.lang.String content, java.lang.String object) {
        super();
        this.userNameDestinataire = userNameDestinataire;
        this.userNameRecepteur = userNameRecepteur;
        String = string;
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

    public String getString() {
        return String;
    }

    public void setString(String String) {
        this.String = String;
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
        return null;
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
