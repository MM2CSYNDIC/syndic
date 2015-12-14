package org.syndic.client.web.command;

import java.lang.reflect.Array;
import java.util.Set;

/**
 * Created by Manel on 14/12/2015.
 */
public class CondoCommand {

    private String name;
    private int[] numeroRue;
    private String typeAddress;
    private String street;
    private String zipcode;
    private String placeName;
    private String city;
    private String country;
    private int codeLot;
    private String typeLot;
    private int floorLot;
    private double areaLot;
    private double part;
    private double area;

    public CondoCommand(){
        super();
    }

    public CondoCommand(String name, double area, String typeAddress, String street, String zipcode, String placeName, String city, String country, int[] numeroRue, String typeLot, int floorLot, double areaLot, double part, int codeLot) {
        this.name = name;
        this.area = area;
        this.typeAddress = typeAddress;
        this.street = street;
        this.zipcode = zipcode;
        this.placeName = placeName;
        this.city = city;
        this.country = country;
        this.numeroRue = numeroRue;
        this.typeLot = typeLot;
        this.floorLot = floorLot;
        this.areaLot = areaLot;
        this.part = part;
        this.codeLot=codeLot;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getTypeAddress() {
        return typeAddress;
    }

    public void setTypeAddress(String typeAddress) {
        this.typeAddress = typeAddress;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int[] getNumeroRue() {
        return numeroRue;
    }

    public void setNumeroRue(int[] numeroRue) {
        this.numeroRue = numeroRue;
    }

    public String getTypeLot() {
        return typeLot;
    }

    public void setTypeLot(String typeLot) {
        this.typeLot = typeLot;
    }

    public int getFloorLot() {
        return floorLot;
    }

    public void setFloorLot(int floorLot) {
        this.floorLot = floorLot;
    }

    public double getAreaLot() {
        return areaLot;
    }

    public void setAreaLot(double areaLot) {
        this.areaLot = areaLot;
    }

    public double getPart() {
        return part;
    }

    public void setPart(double part) {
        this.part = part;
    }
    public int getCodeLot() {
        return codeLot;
    }

    public void setCodeLot(int codeLot) {
        this.codeLot = codeLot;
    }

}
