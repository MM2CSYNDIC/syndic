package fr.upond.syndic.security.model;

import fr.upond.syndic.security.model.User;
import fr.upond.syndic.security.model.UserRole;
import static org.junit.Assert.*;
import java.util.HashSet;
import java.util.Set;
import org.junit.Test;

public class UserTest {

    @Test
    public void test1() {
        User u = new User("toto","bob",true);
        assertEquals(u.getUserName(),"toto");
        assertEquals(u.getPassWord(),"bob");
        assertEquals(u.isEnabled(),true);
    }

    @Test
    public void test2() {
        User u2 = new User("","",true);
        UserRole ur = new UserRole(0,u2,"");
        Set<UserRole> set = new HashSet<UserRole>();
        set.add(ur);
        u2.setUserName("tata");
        u2.setPassWord("123");
        u2.setEnabled(false);
        u2.setUserRole(set);

        assertEquals(u2.getUserName(),"tata");
        assertEquals(u2.getPassWord(),"123");
        assertEquals(u2.isEnabled(),false);
        assertEquals(u2.getUserRole(),set);
    }
}