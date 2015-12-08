package fr.upond.syndic.security.model;

import fr.upond.syndic.security.model.UserRole;
import fr.upond.syndic.security.model.User;

import static org.junit.Assert.*;

import fr.upond.syndic.security.model.User;
import org.junit.Test;

public class UserRoleTest {

    @Test
    public void test1() {
        User u = new User("","",true);
        UserRole ur = new UserRole(u, "role1");
        assertEquals(ur.getUser().isEnabled(), true);
        assertEquals(ur.getRole(), "role1");
    }
}
