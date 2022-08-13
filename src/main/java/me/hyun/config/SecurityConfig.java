package me.hyun.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

import me.hyun.security.LogoutSuccess;

@Configuration
@EnableWebSecurity

public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	UserDetailsService detailsService;
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("utf-8");
		filter.setForceEncoding(true);
		http.addFilterBefore(filter, CsrfFilter.class);
		
		http.authorizeRequests()
			.antMatchers("/security/all").permitAll()
			.antMatchers("/security/admin").access("hasRole('ROLE_ADMIN')")
			.antMatchers("/security/member").access("hasRole('ROLE_MEMBER')");
		
		http.formLogin()
			.loginPage("/menu/account/login")
			.usernameParameter("userId")
			.passwordParameter("password")
			.loginProcessingUrl("/menu/account/login");
			
		http.logout()
			.logoutUrl("/logout")
			.logoutSuccessHandler(logoutSuccess())
			.invalidateHttpSession(true)
			.deleteCookies("remeber-me","JSESSION_ID");
			
			
		http.rememberMe().key("project").tokenRepository(persistentTokenRepository())
			.tokenValiditySeconds(604800);
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		System.out.println(detailsService);
		auth.userDetailsService(detailsService)
		.passwordEncoder(bcryptPwEncoder());
	}
	
	@Bean
	public PasswordEncoder bcryptPwEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public PersistentTokenRepository persistentTokenRepository() {
		JdbcTokenRepositoryImpl repo = new JdbcTokenRepositoryImpl();
		repo.setDataSource(dataSource);
		return repo;
	}
	
	@Bean
	public LogoutSuccess logoutSuccess() {
		return new LogoutSuccess(); 
	}
}
