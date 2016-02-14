package org.syndic.client.web.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.util.Arrays;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.View;
import org.syndic.client.web.event.controller.EventController;

import fr.upond.syndic.repo.model.event.Event;
import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@RunWith(MockitoJUnitRunner.class)
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("classpath:/webapp/WEB-INF/syndic-servlet.xml")
//@ContextConfiguration(loader = WebContextLoader.class, locations = {"classpath:exampleApplicationContext.xml"})
//@ContextConfiguration({ "file:src/main/webapp/WEB-INF/syndic-servlet.xml","classpath:beans/syndic-data.xml","classpath:contexte/syndic-service.xml"  })
//@WebAppConfiguration
public class EventControllerTest {
	
	@InjectMocks
	private EventController controller;
	@Mock
	private IManager<Object> manager;
	@Mock
	private View mockView;
	private MockMvc mockMvc;
	

	
	@Before
	public void setUp () throws Exception {
		MockitoAnnotations.initMocks(this);
	    mockMvc = MockMvcBuilders.standaloneSetup(controller)
	    		.setSingleView(mockView)
	    		.build();
		//mockMvc = MockMvcBuilders.standaloneSetup(new EventController()).build();
	}
	
	@Test
	public void testGetFormAddUser () throws Exception {
		mockMvc.perform(get("/event/add"))
			                .andExpect(status().isOk())
			                .andExpect(view().name("addEventPage"));
	}
	
	@Test
	public void testListEvent () throws Exception {
		final Event event1 = Mockito.mock(Event.class);
		List<Object> expectedEvent = Arrays.asList(event1);
		when(manager.get(new Event())).thenReturn(expectedEvent);
		mockMvc.perform(get("/event/list"))
			                .andExpect(status().isOk())
			                //.andExpect(model().attribute("listevent", expectedEvent))
			                .andExpect(model().attributeDoesNotExist("listevents"))
			                .andExpect(model().attributeExists("listevent"))
			                .andExpect(view().name("listEventPage"));
	}

}
