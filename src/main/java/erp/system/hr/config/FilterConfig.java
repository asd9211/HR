package erp.system.hr.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import erp.system.hr.filter.EncodingFilter;

@Configuration
public class FilterConfig {

	@Bean
	public EncodingFilter encodingFilter() {
		return new EncodingFilter("UTF-8");
	}
}
