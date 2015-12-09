package fr.upond.syndic.security.model;
import static org.junit.Assert.assertEquals;

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
