package erp.system.hr.config;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;

@ControllerAdvice
public class ExceptionController {

	@ExceptionHandler(MaxUploadSizeExceededException.class)
	public ResponseEntity uploadedFileTooLarge(MaxUploadSizeExceededException e) {
		final String msg = "최대 사이즈인 20MB를 초과하였습니다";
		ResponseEntity res = new ResponseEntity<>(msg, HttpStatus.INTERNAL_SERVER_ERROR);
		return res;
	}
	
	@ExceptionHandler(FileNotFoundException.class)
	public ResponseEntity IOExceptionCatch(FileNotFoundException e) {
		final String msg = "파일 첨부에 실패했습니다.";
		ResponseEntity res = new ResponseEntity<>(msg, HttpStatus.INTERNAL_SERVER_ERROR);
		return res;
	}
	
	@ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	public ResponseEntity IOExceptionCatch(SQLIntegrityConstraintViolationException e) {
		final String msg = "이미 존재하는 코드내역입니다.";
		ResponseEntity res = new ResponseEntity<>(msg, HttpStatus.INTERNAL_SERVER_ERROR);
		return res;
	}
}
