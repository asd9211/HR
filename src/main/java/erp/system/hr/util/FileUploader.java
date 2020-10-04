package erp.system.hr.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import erp.system.hr.util.vo.FileVO;

public class FileUploader {

	public static Optional<FileVO> profileSave(MultipartHttpServletRequest req) {
		
		String filePath = "C:\\Users\\tec\\Desktop\\lyh\\";
		StringBuffer sb = new StringBuffer();
		String realFileName;
		String ext;
		String changedFileName; 
		
		Iterator<String> itr = req.getFileNames();
		MultipartFile mfile = null;
		
		if (itr.hasNext()) {
			try {
				FileVO fvo = new FileVO();
				mfile = req.getFile(itr.next());
				realFileName = mfile.getOriginalFilename();
				ext = realFileName.substring(realFileName.lastIndexOf('.'));
				
				sb.append(filePath);
				sb.append(System.currentTimeMillis());
				sb.append(ext);
				changedFileName = sb.toString();
				sb.delete(0, sb.length());
				
				fvo.setChangedFileName(changedFileName);
				fvo.setRealFileName(realFileName);
				
				FileOutputStream fos = new FileOutputStream(changedFileName);
				fos.write(mfile.getBytes());
				fos.close();
				return Optional.ofNullable(fvo);
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}

		}
		return null;

	}
}
