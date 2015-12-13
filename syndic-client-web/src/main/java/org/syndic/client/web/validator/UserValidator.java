package org.syndic.client.web.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.syndic.client.web.command.UserCommand;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class UserValidator implements Validator {

	@SuppressWarnings("rawtypes")
	@Override
	public boolean supports(Class clazz) {
		return UserCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object obj, Errors error) {
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "userName", "required.userName", "Field userName is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "passWord", "required.passWord", "Field passWord is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "confirmation", "required.confirmation", "Field confirmation is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "typeUser", "required.typeUser", "Field typeUser is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "firstName", "required.firstName", "Field firstName is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "lastName", "required.lastName", "Field lastName is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "phone", "required.phone", "Field phone is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "mobile", "required.mobile", "Field mobile is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "email", "required.email", "Field email is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "numAddress", "required.numAddress", "Field numAddress is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "typeAddress", "required.typeAddress", "Field typeAddress is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "street", "required.street", "Field street is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "city", "required.city", "Field city is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "zipCode", "required.zipCode", "Field zipCode is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "country", "required.country", "Field country is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "placeName", "required.placeName", "Field placeName is required");
		
		if(!((UserCommand)obj).getPassWord().equals(((UserCommand)obj).getConfirmation())) {
			error.reject("required.confirmation", "Confirmation is invalid ");
		}
		
	}

}
