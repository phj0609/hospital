package me.hyun.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Res {
	
	private Long resId;
	private String userName;
	private String phoneNumber;
	private String resDate; // 예약 날짜
	private String resTime;// 예약시간
	private String resContent; // 남기고 싶은말
	private String resType; // 진료선택
	
	
}
