package me.hyun.validation;

import java.lang.reflect.InvocationTargetException;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.beanutils.BeanUtils;

import me.hyun.common.FieldMatch;

public class FieldMatchValidator implements ConstraintValidator<FieldMatch, Object>{
	
	private String firstFieldName;
	private String secondFieldName;
	private String message; //에러메시지
	
	//@FieldMatch(first="conformPassword")
	@Override
	public void initialize(FieldMatch constraintAnnotation) {
		firstFieldName = constraintAnnotation.first();
		secondFieldName = constraintAnnotation.second();
		message = constraintAnnotation.message();
	}
	
	@Override
	public boolean isValid(Object value, ConstraintValidatorContext context) {
		boolean valid = true;
		// 검증
		try {
			Object firstObj = BeanUtils.getProperty(value, firstFieldName);
			Object secondObj = BeanUtils.getProperty(value, secondFieldName);
			valid = firstObj != null && secondObj!=null && firstObj.equals(secondObj);
			if(!valid) { //에러 메시지 전달하는 과정
				context.buildConstraintViolationWithTemplate(message)
				.addPropertyNode(firstFieldName)
				.addConstraintViolation()
				.disableDefaultConstraintViolation();
			}
				
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		return valid;
	}

	
}