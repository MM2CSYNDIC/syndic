package org.syndic.client.web.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.syndic.client.web.command.CondoCommand;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class CondoValidator  implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return CondoCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object obj, Errors error) {
		
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "name", "required.name", "Field Name is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "numAddressStart", "required.numAddressStart", "Field Address Number is required");
		//ValidationUtils.rejectIfEmptyOrWhitespace(error, "numAddressEnd", "required.confirmation", "Field confirmation is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "typeAddress", "required.typeAddress", "Field type Address is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "street", "required.street", "Field Street is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "zipcode", "required.zipcode", "Field Zip Code is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "placeName", "required.placeName", "Field Place Name is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "city", "required.city", "Field City is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "country", "required.country", "Field Contry is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "codeLot", "required.codeLot", "Field code Lot is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "typeLot", "required.typeLot", "Field type Lot is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "floorLot", "required.floorLot", "Field floor Lot is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "areaLot", "required.areaLot", "Field area Lot is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "part", "required.part", "Field part is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "areaCondo", "required.areaCondo", "Field area Condo is required");
		
		CondoCommand command = (CondoCommand)obj;
		int i = this.isIntParsable(command.getNumAddressStart(), error);	
		if (!command.getNumAddressEnd().equals("")) {
			int j = this.isIntParsable(command.getNumAddressEnd(), error);
			if (j != -1) {
				if (j<i) {
					error.reject("required.numAddressEnd", "End Num Address must be Greater then the start");
				}
			}
		}
		this.isIntParsable(command.getCodeLot(), error);
		this.isIntParsable(command.getFloorLot(), error);
		this.isIntParsable(command.getZipcode(), error);
		this.isDoubleParsable(command.getAreaLot(), error);
		this.isDoubleParsable(command.getPart(), error);
		
	}
	
	private int isIntParsable(String input, Errors error) {
		int i = 0;
	    try{
	        i = Integer.parseInt(input);
	    }catch(NumberFormatException e){
	    	i = -1;
	    	error.reject("required.parse", "Please Enter a number");
	    }
		return i;
	}
	private void isDoubleParsable(String input, Errors error) {
	    try{
	        Double.parseDouble(input);
	    }catch(NumberFormatException e){
	    	error.reject("required.parse", "Please Enter a number");
	    }
	}

}
