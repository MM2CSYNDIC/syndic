package org.syndic.client.web.command;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by leite_2 on 01/03/2016.
 */
public class MessageCommand {

    private String userNameDestinataire;
    private String userNameRecepteur;
    private String content;
    private String object;

    public MessageCommand(int id, String userNameDestinataire, String userNameRecepteur, String content, String object) {
        super();
        this.userNameDestinataire = userNameDestinataire;
        this.userNameRecepteur = userNameRecepteur;
        this.content = content;
        this.object = object;
    }

    public MessageCommand() {    }

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

}
