package fr.upond.syndic.repository;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@RunWith(MockitoJUnitRunner.class)
public class DaoTest {
	
	private static ClassPathXmlApplicationContext context;
	private SessionFactory sessionFactory;
	
	@Before
	public void setUp () throws Exception {
		//context = new ClassPathXmlApplicationContext("classpath:test-syndic-data.xml");
	}
	
	@Test
	public void testGet () throws Exception {
		
	}

}
