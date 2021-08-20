package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class CompanyCommandValidator implements Validator {
	public boolean supports(Class<?> clazz) {
		return false;
	}
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "comNum", "required");
		ValidationUtils.rejectIfEmpty(errors, "ceoName", "required");
		ValidationUtils.rejectIfEmpty(errors, "comName", "required");
		ValidationUtils.rejectIfEmpty(errors, "comAddress", "required");
		ValidationUtils.rejectIfEmpty(errors, "comCateGory", "required");
		ValidationUtils.rejectIfEmpty(errors, "deliverypay", "required");
		ValidationUtils.rejectIfEmpty(errors, "freeDelivery", "required");
		ValidationUtils.rejectIfEmpty(errors, "minPrice", "required");
		ValidationUtils.rejectIfEmpty(errors, "deliveryZone", "required");
		ValidationUtils.rejectIfEmpty(errors, "businesstime", "required");
		ValidationUtils.rejectIfEmpty(errors, "comPhone", "required");
	}
}
