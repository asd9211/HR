package erp.system.hr.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.Optional;

import org.eclipse.jdt.internal.compiler.batch.ClasspathDirectory;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import erp.system.hr.util.vo.FileVO;

public class FileUploader {

	public static Optional<FileVO> setProfile(MultipartHttpServletRequest req) throws IOException {
		
		String separator = File.separator;
		String filePath = "src"+separator+"main"+separator+"webapp"+separator+"resources"+separator+"img"+separator;
		String realFileName;
		String ext;
		String changedFileName; 
		StringBuffer sb = new StringBuffer();
		
		
		Iterator<String> itr = req.getFileNames();
		MultipartFile mfile = null;
		
		if (itr.hasNext()) {
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
		
		}
		return Optional.empty();

	}
}
