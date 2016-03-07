package fr.upond.syndic.repo.model.user;

import fr.upond.syndic.repo.model.common.Address;

/**
 * Created by Manel on 15/12/2015.
 */
@SuppressWarnings("serial")
public class Gardien extends UserData {


    private String journees;
    private String horaires;
    private String taches;

    public Gardien(){
        super();
    }


    public Gardien(String firstName, String lastName, String phone, String mobile, String email, Address address, String type, String journees, String horaires, String taches) {
        super(firstName, lastName, phone, mobile, email, address, type);
        this.journees = journees;
        this.horaires = horaires;
        this.taches = taches;
    }

    public Gardien(String journees, String horaires, String taches) {
        this.journees = journees;
        this.horaires = horaires;
        this.taches = taches;
    }

    public String getJournees() {
        return journees;
    }

    public void setJournees(String journees) {
        this.journees = journees;
    }

    public String getHoraires() {
        return horaires;
    }

    public void setHoraires(String horaires) {
        this.horaires = horaires;
    }

    public String getTaches() {
        return taches;
    }

    public void setTaches(String taches) {
        this.taches = taches;
    }

    @Override
    public boolean equals(Object o){return false;}

}
