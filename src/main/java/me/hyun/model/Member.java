package me.hyun.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import me.hyun.common.FieldMatch;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@FieldMatch(first = "confirmPassword", second = "password", message = "비밀번호가 일치하지 않음")
public class Member {
	// 아이디
	// 비밀번호
	// 비밀번호 재확인
	// 이름
	// 이메일
	// 전화번호
	@NotEmpty(message = "아이디를 입력하세요")
	private String userId; // 아이디
	
	@Pattern(regexp = "^.*(?=^.{8,15}$)(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$", message = "비밀번호는 숫자, 문자, 특수문자 포함 8~15자리 이내이어야 합니다")
	private String password; // 비밀번호
	private String confirmPassword; // 비밀번호 재확인

	@Pattern(regexp = "^[가-힣|a-z|A-Z]{2,5}$", message = "이름은 한글 또는 영어 2~5글자이어야 합니다.")
	private String userName; // 이름
	
	@Email(message = "이메일 형식이 아닙니다")
	@NotEmpty(message = "이메일을 입력하세요")
	private String email; // 이메일 
	
	private String phoneNumber; // 전화번호
}
