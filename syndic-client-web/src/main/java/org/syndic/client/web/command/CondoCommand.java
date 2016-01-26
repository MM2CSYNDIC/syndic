package org.syndic.client.web.command;

/**
 * Created by Manel on 14/12/2015.
 */
public class CondoCommand {

    private String name;
    private String address;
    private String zipcode;
    private String city;
    private String codeLot;
    private String typeLot;
    private String floorLot;
    private double areaLot;
    private String part;
    private double areaCondo;

    public CondoCommand(){
        super();
    }

    public CondoCommand(String name, String address, String zipcode, String city, String codeLot, String typeLot, String floorLot,
                        double areaLot, String part, double areaCondo) {
        super();
        this.name       = name;
        this.address    = address;
        this.zipcode    = zipcode;
        this.city       = city;
        this.codeLot    = codeLot;
        this.typeLot    = typeLot;
        this.floorLot   = floorLot;
        this.areaLot    = areaLot;
        this.part       = part;
        this.areaCondo  = areaCondo;
    }


    public double getAreaCondo() {
        return areaCondo;
    }

    public void setAreaCondo(double area) {
        this.areaCondo = area;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getTypeLot() {
        return typeLot;
    }

    public void setTypeLot(String typeLot) {
        this.typeLot = typeLot;
    }

    public String getFloorLot() {
        return floorLot;
    }

    public void setFloorLot(String floorLot) {
        this.floorLot = floorLot;
    }

    public double getAreaLot() {
        return areaLot;
    }

    public void setAreaLot(double areaLot) {
        this.areaLot = areaLot;
    }

    public String getPart() {
        return part;
    }

    public void setPart(String part) {
        this.part = part;
    }
    public String getCodeLot() {
        return codeLot;
    }

    public void setCodeLot(String codeLot) {
        this.codeLot = codeLot;
    }

    public String getAddress() {
        return address;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}