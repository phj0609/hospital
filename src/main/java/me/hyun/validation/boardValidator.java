package me.hyun.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import me.hyun.model.Board;

public class boardValidator implements Validator{
	
	private static final String writerRegExp = "^[가-힣]*$";
	private Pattern pattern;

	public boardValidator() {

	}

	@Override
	public boolean supports(Class<?> clazz) {
		return Board.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Board board = (Board) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "required");

		if (board.getTitle().length() < 3 || board.getTitle().length() > 100) {
			errors.rejectValue("title", "length");
		}

		if (board.getWriter() == null || board.getWriter().trim().isEmpty()) {
			errors.rejectValue("writer", "required.writer");
		} else {
			pattern = Pattern.compile(writerRegExp);
			Matcher matcher = pattern.matcher(board.getWriter());
			if (!matcher.matches()) {
				errors.rejectValue("writer", "hangul");
			}
		}
	}
}
