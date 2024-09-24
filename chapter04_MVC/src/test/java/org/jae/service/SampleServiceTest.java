package org.jae.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.log4j.Log4j;
@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class SampleServiceTest {
	@Autowired
	private SampleTxService service;
	
	@Test
	public void testLong() {
		String str = "Starry\r\n" ;
		
		log.info(str.getBytes().length);
		
		service.addData(str);
		
	}
	

}
