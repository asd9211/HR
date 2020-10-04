package erp.system.hr.config;

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
		ResponseEntity resObj = new ResponseEntity<>(msg, HttpStatus.INTERNAL_SERVER_ERROR);
		
		return resObj;
	}
}
