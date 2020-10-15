package erp.system.hr.util;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Converter {
	
	private Converter() {
		  throw new IllegalStateException("Utility class");
	}
	
	public static Map<String,List<Map<String,String>>> convertJsonToListInMap(MultipartHttpServletRequest req){
		Map<String, List<Map<String, String>>> objList = new HashMap<>();
		ObjectMapper objectMapper = new ObjectMapper();
		
		for (String key : req.getParameterMap().keySet()) {
			String[] value = req.getParameterMap().get(key);
			for (int i = 0; i < value.length; i++) {
				List<Map<String, String>> parseValue;
				try {
					parseValue = objectMapper.readValue(value[i], new TypeReference<List<Map<String, String>>>(){});
					objList.put(key, parseValue);
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
			}
		}
		return objList;
	}
	
	public static void convertMapToVO(Map<String,String> map, Object vo){
	    String keyAttribute = "";
	    String setMethodString = "set";
	    String methodString = "";
	    StringBuffer sb = new StringBuffer();
	    Iterator itr = map.keySet().iterator();

	    while(itr.hasNext()){
	       keyAttribute = (String) itr.next();
	       
	       sb.append(setMethodString); 
	       sb.append(keyAttribute.substring(0,1).toUpperCase());
	       sb.append(keyAttribute.substring(1));
	       
	       methodString = sb.toString();
	       sb.delete(0, sb.length());
	       
	       Method[] methods = vo.getClass().getDeclaredMethods();
	        
	        for(int i=0;i<methods.length;i++){
	            if(methodString.equals(methods[i].getName())){
	                try{
	                    methods[i].invoke(vo, map.get(keyAttribute));
	                }catch(Exception e){
	                    e.printStackTrace();
	                }
	            }
	        }
	    }
	}
}
