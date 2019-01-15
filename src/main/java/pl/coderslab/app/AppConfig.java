package pl.coderslab.app;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.format.FormatterRegistry;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleContextResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import pl.coderslab.converter.*;


import javax.persistence.EntityManagerFactory;
import javax.validation.Validator;
import java.util.Locale;


@Configuration
    @EnableWebMvc
    @ComponentScan("pl.coderslab")
    @EnableTransactionManagement
    @EnableJpaRepositories(basePackages = "pl.coderslab.repository")
    public class AppConfig extends WebMvcConfigurerAdapter {


        @Bean
        public ViewResolver viewResolver() {
            InternalResourceViewResolver viewResolver =
                    new InternalResourceViewResolver();
            viewResolver.setPrefix("/WEB-INF/views/");
            viewResolver.setSuffix(".jsp");
            return viewResolver;
        }
        @Bean
        public LocalEntityManagerFactoryBean entityManagerFactory() {
            LocalEntityManagerFactoryBean emfb = new LocalEntityManagerFactoryBean();
            emfb.setPersistenceUnitName("CRMPersistenceUnit");
            return emfb; }
        @Bean
        public JpaTransactionManager transactionManager(EntityManagerFactory emf) {
            JpaTransactionManager tm = new JpaTransactionManager(emf);
            return tm; }



        @Override
        public void addFormatters(FormatterRegistry registry) {

            registry.addConverter(getPriorityConverter());
            registry.addConverter(getProjectConverter());
            registry.addConverter(getStatusConverter());
            registry.addConverter(getTaskConverter());
            registry.addConverter(getUserConverter());


        }



        @Bean(name="localeResolver")
        public LocaleContextResolver getLocaleContextResolver() {
            SessionLocaleResolver localeResolver = new SessionLocaleResolver();
            localeResolver.setDefaultLocale(new Locale("pl","PL"));
            return localeResolver; }



          @Bean
          public Validator validator() {
              return new LocalValidatorFactoryBean();
        }



          @Bean
          public PriorityConverter getPriorityConverter(){

            return new PriorityConverter();

          }

          @Bean
          public ProjectConverter getProjectConverter(){

            return new ProjectConverter();

          }

          @Bean
          public StatusConverter getStatusConverter(){

            return new StatusConverter();

          }

          @Bean
          public TaskConverter getTaskConverter(){

            return new TaskConverter();

          }

          @Bean
          public UserConverter getUserConverter(){

            return new UserConverter();

          }









}
















