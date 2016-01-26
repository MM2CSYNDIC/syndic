package fr.upond.syndic.repo.model.user;


import fr.upond.syndic.security.model.User;

/**
 * Created by Manel on 15/12/2015.
 */
@SuppressWarnings("serial")
public class PartOwner extends UserData {

private int nombreLot;

    private PartOwner(){
        super();
    }

    public PartOwner(int nombreLot) {
        this.nombreLot = nombreLot;
    }

    public PartOwner(String firstName, String lastName, String phone, String mobile, String email, String zipcode, String city, String address, User users, String type, int nombreLot) {
        super(firstName, lastName, phone, mobile, email, zipcode, city, address, users, type);
        this.nombreLot = nombreLot;
    }

    public int getNombreLot() {
        return nombreLot;
    }

    public void setNombreLot(int nombreLot) {
        this.nombreLot = nombreLot;
    }


}
