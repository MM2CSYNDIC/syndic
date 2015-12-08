package org.syndic.client.web.command;

import  org.syndic.client.web.command.UserCommand;
import static org.junit.Assert.*;

import org.junit.Test;

public class UserCommandTest {

    @Test
    public void test() {
        UserCommand  uc = new UserCommand ("pseudoTest","pwdTest");
        assertEquals(uc.getUserName(),"pseudoTest");
        assertEquals(uc.getPassWord(),"pwdTest");
    }

    @Test
    public void test2() {
        UserCommand  uc2 = new UserCommand ();
        uc2.setUserName("bob");
        uc2.setPassWord("sponge");
        assertEquals(uc2.getUserName(),"bob");
        assertEquals(uc2.getPassWord(),"sponge");
    }
}
