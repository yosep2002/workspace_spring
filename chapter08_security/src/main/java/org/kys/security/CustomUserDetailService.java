package org.kys.security;

import org.kys.domain.MemberVO;
import org.kys.mapper.MemberMapper;
import org.kys.security.domain.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("load user by username : " + username);
		
		MemberVO vo = mapper.read(username);
		
		log.warn("member mapper : " + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}

}
