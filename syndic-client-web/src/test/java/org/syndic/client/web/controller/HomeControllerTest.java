package org.syndic.client.web.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.View;
import org.syndic.client.web.home.controller.Home;

import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */

@RunWith(MockitoJUnitRunner.class)
public class HomeControllerTest {
	
	@InjectMocks
	private Home controller;
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
	}
	
	@Test
	public void testWelcome () throws Exception {
		mockMvc.perform(get("/welcome"))
			                .andExpect(status().isOk())
			                .andExpect(view().name("welcomePage"));
	}
	
	@Test
	public void testLogin () throws Exception {
		mockMvc.perform(get("/sign"))
			                .andExpect(status().isOk())
			                .andExpect(view().name("loginPage"));
	}
	
	@Test
	public void testGetFormAddCondo () throws Exception {
		mockMvc.perform(get("/getformaddcondo"))
			                .andExpect(status().isOk())
			                .andExpect(model().attributeDoesNotExist("condoCommands"))
			                .andExpect(model().attributeExists("condoCommand"))
			                .andExpect(view().name("addCondoPage"));
	}
	
	/*
	@Test
	public void testAddCondo () throws Exception {
		//final Event event1 = Mockito.mock(Event.class);
		//List<Object> expectedEvent = Arrays.asList(event1);
		//when(manager.get(new Event())).thenReturn(expectedEvent);
		mockMvc.perform(get("/addcondo"))
			                .andExpect(status().isOk())
			                .andExpect(view().name("addCondoPage"));
	}
	*/

}
