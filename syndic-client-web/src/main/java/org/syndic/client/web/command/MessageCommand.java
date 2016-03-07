package org.syndic.client.web.command;

/**
 * Created by leite_2 on 01/03/2016.
 */
public class MessageCommand {

    private String userNameDestinataire;
    private String userNameEmetteur;
    private String content;
    private String object;



    private String statut;

    public MessageCommand( String userNameDestinataire, String userNameEmetteur, String content, String object, String statut) {
        super();
        this.userNameEmetteur = userNameEmetteur;
        this.content = content;
        this.userNameDestinataire = userNameDestinataire;
        this.object = object;
        this.statut = statut;
    }

    public MessageCommand() {    }

    public String getStatut() {
        return statut;
    }
    public void setStatut(String statut) {
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

}
