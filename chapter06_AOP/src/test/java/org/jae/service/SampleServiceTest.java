package org.jae.service;

import org.junit.Test; 
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SampleServiceTest {
	@Autowired
	private SampleService service;
	
	@Test
	public void testClass() {
		log.info(service);
		log.info(service.getClass().getName());
	}
	@Test
	public void testDoAdd() throws Exception{
		log.info(service.doAdd("123", "456"));
	}
	@Test
	public void testDoAddError() throws Exception{
		log.info(service.doAdd("123", "abc"));
	}

}
