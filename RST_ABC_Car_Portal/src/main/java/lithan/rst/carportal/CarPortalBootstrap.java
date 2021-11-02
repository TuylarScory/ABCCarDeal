package lithan.rst.carportal;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import lithan.rst.carportal.config.JPAConfig;
import lithan.rst.carportal.config.SecurityConfig;
import lithan.rst.carportal.config.WebMvcConfig;

//web.xml
public class CarPortalBootstrap extends AbstractAnnotationConfigDispatcherServletInitializer {

	protected Class<?>[] getRootConfigClasses() {
        return new Class[]{JPAConfig.class, SecurityConfig.class};
    }

    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{WebMvcConfig.class};
    }

    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}
