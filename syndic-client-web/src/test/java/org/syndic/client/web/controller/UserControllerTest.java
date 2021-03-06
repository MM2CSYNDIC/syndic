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
import org.syndic.client.web.users.controller.UserController;

import fr.upond.syndic.service.IManager;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
@RunWith(MockitoJUnitRunner.class)
public class UserControllerTest {
	
	@InjectMocks
	private UserController controller;
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
	public void testGetFormAddUser () throws Exception {
		mockMvc.perform(get("/getformadduser"))
			                .andExpect(status().isOk())
			                .andExpect(model().attributeDoesNotExist("userCommands"))
			                .andExpect(model().attributeExists("userCommand"))
			                .andExpect(view().name("addUserPage"));
	}

}
