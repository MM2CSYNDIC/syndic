package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;


/**
 *
 * @author MANEL GHARBI
 *
 */
@SuppressWarnings("serial")
public class Lot extends BaseObject {

    private int id;
    private int num;
    private String type;
    private int floor;
    private double area;
    private double part;


    public Lot(int num,String type,int floor,double area,double part) {
        super();
        this.num = num;
        this.type = type;
        this.floor = floor;
        this.area = area;
        this.part = part;
    }

    public double getPart() {
        return part;
    }

    public void setPart(double part) {
        this.part = part;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

	public Lot() {
        super();
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
