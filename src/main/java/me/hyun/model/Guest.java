package me.hyun.model;

import java.time.LocalDateTime;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Guest {
	
	private Long id;
	
	// 이름
	// 전화번호
	@NotEmpty(message = "이름을 입력하세요")
	@Pattern(regexp = "^[가-힣|a-z|A-Z]{2,5}$", message = "이름은 한글 또는 영어 2~5글자이어야 합니다.")
	private String userName; // 이름
		
	@NotEmpty(message = "전화번호를 입력하세요")
	@Pattern(regexp = "^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$", message = "전화번호를 올바르게 입력하세요.")
	private String phoneNumber; // 전화번호
	
	private LocalDateTime regDate;
}