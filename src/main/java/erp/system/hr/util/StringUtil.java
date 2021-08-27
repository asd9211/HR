package erp.system.hr.util;

public class StringUtil {
	public static boolean isNull(String str) {
		if(str == null || str.trim().length() == 1 || str.isEmpty()) {
			return true;
		}
		return false; 
	}
}
