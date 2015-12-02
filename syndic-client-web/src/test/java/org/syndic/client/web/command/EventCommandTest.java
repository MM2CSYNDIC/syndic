package org.syndic.client.web.command;

import static org.junit.Assert.*;

import org.junit.Test;

public class EventCommandTest {

	@Test
	public void test() {
		EventCommand  ec = new EventCommand ("EventOne","AG","12/12/12","assemblé génerale");
		assertEquals(ec.getDateEvent(),"12/12/12");
	}

}
