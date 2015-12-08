package org.syndic.client.web.command;

import org.syndic.client.web.command.EventCommand;
import static org.junit.Assert.*;

import org.junit.Test;

public class EventCommandTest {

	@Test
	public void test() {
		EventCommand  ec = new EventCommand ("EventOne","AG","12/12/12","assemblé génerale");
		assertEquals(ec.getDateEvent(),"12/12/12");
		assertEquals(ec.getTypeEvent(),"AG");
		assertEquals(ec.getDescEvent(),"assemblé génerale");
	}

	@Test
	public void test2() {
		EventCommand  ec2 = new EventCommand ();
		ec2.setDateEvent("10/12/12");
		ec2.setTypeEvent("AG2");
		ec2.setDescEvent("assemblé génerale 2");
		assertEquals(ec2.getDateEvent(), "10/12/12");
		assertEquals(ec2.getTypeEvent(),"AG2");
		assertEquals(ec2.getDescEvent(),"assemblé génerale 2");
	}
}
