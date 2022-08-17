package me.hyun.model;

import java.io.Serializable;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import me.hyun.common.FieldMatch;
import me.hyun.security.AuthVO;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@FieldMatch(first = "confirmPassword", second = "password", message = "비밀번호가 일치하지 않음")
@Builder
@Data
public class Member implements Serializable{

	private static final long serialVersionUID = -2347096176722493653L;

	// 아이디
	// 비밀번호
	// 비밀번호 재확인
	// 이름
	// 이메일
	// 전화번호
	private Long id;
	
	@NotEmpty(message = "아이디를 입력하세요")
	@Pattern(regexp = "^[a-zA-z0-9]{4,12}$", message = "아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다.")
	private String userId; // 아이디
	
	@NotEmpty(message = "비밀번호를 입력하세요")
	@Pattern(regexp = "^.*(?=^.{8,15}$)(?=.*\\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$", message = "비밀번호는 숫자, 문자, 특수문자 포함 8~15자리 이내이어야 합니다.")
	private String password; // 비밀번호
	private String confirmPassword; // 비밀번호 재확인
	
	public boolean passwordMatch(String password) {
		return this.password.equals(password);
	}
	
	@NotEmpty(message = "이름을 입력하세요")
	@Pattern(regexp = "^[가-힣|a-z|A-Z]{2,5}$", message = "이름은 한글 또는 영어 2~5글자이어야 합니다.")
	private String userName; // 이름
	
	@Email(message = "이메일 형식이 아닙니다")
	@Pattern(regexp = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$", message = "이메일 형식이 아님")
	private String email; // 이메일 
	
	@NotEmpty(message = "전화번호를 입력하세요")
	@Pattern(regexp = "^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$", message = "전화번호를 올바르게 입력하세요.")
	private String phoneNumber; // 전화번호
	private String enabled;
	
	private List<AuthVO> authList;
}
