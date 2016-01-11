package org.syndic.client.web.command;

/**
 * Created by Manel on 16/12/2015.
 */
public class LotCommand {

    private String codeLot;
    private String typeLot;
    private String floorLot;
    private String areaLot;
    private String partLot;

    public LotCommand(){
        super();
    }

    public LotCommand(String codeLot, String typeLot, String floorLot, String areaLot, String partLot) {
        this.codeLot = codeLot;
        this.typeLot = typeLot;
        this.floorLot = floorLot;
        this.areaLot = areaLot;
        this.partLot = partLot;
    }

    public String getNumero() {
        return codeLot;
    }

    public void setNumero(String codeLot) {
        this.codeLot = codeLot;
    }

    public String getType() {
        return typeLot;
    }

    public void setType(String typeLot) {
        this.typeLot = typeLot;
    }

    public String getFloor() {
        return floorLot;
    }

    public void setFloor(String floorLot) {
        this.floorLot = floorLot;
    }

    public String getArea() {
        return areaLot;
    }

    public void setArea(String areaLot) {
        this.areaLot = areaLot;
    }

    public String getPart() {
        return partLot;
    }

    public void setPart(String partLot) {
        this.partLot = partLot;
    }
}
