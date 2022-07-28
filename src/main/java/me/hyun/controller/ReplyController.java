package me.hyun.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import me.hyun.model.Criteria;
import me.hyun.model.Reply;
import me.hyun.service.ReplyService;

@RestController
@RequestMapping("/replies")
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;
	
	@PostMapping(value = "new", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody Reply vo) {
		int insertCount = service.register(vo);
		return insertCount == 1 ?
				new ResponseEntity<String>("success" , HttpStatus.OK) : new ResponseEntity<> (HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	// 특정 게시물의 댓글 목록 확인
	@GetMapping(value = "/pages/{bno}/{page}", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Reply>> getList(@PathVariable int page, @PathVariable Long bno) {
		Criteria criteria = new Criteria(page, 10);
		return new ResponseEntity<>(service.getList(criteria, bno), HttpStatus.OK);
	}

	// 댓글 조회
	@GetMapping(value = "/{rno}", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Reply> get(@PathVariable Long rno) {
		return new ResponseEntity<Reply>(service.get(rno), HttpStatus.OK);
	}

	// 댓글 삭제
	@DeleteMapping(value = "/{rno}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> remove(@PathVariable Long rno) {
		return service.remove(rno) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	// 댓글 수정
	@PutMapping(value = "/{rno}")
	public ResponseEntity<String> modify(
			@RequestBody Reply vo, @PathVariable Long rno) {
		vo.setRno(rno);
		return service.modify(vo) == 1 
				? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
