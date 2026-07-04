package junitassertions;

import org.junit.Test;
import static org.junit.Assert.*;

public class AssertionsTest {
    @Test
    public void testAssertions() {
        // Assert equals
        assertEquals(5, 2 + 3);

        // Assert true
        assertTrue(5 > 3);

        // Assert false
        assertFalse(5 < 3);

        // Assert null
        assertNull(null);

        // Assert not null
        assertNotNull(new Object());

        // Assert arrays equals
        assertArrayEquals(new int[]{1, 2, 3}, new int[]{1, 2, 3});

        // Assert same (checks if two object references point to the same object)
        String str1 = "hello";
        String str2 = str1;
        assertSame(str1, str2);

        // Assert not same
        String str3 = new String("world");
        String str4 = new String("world");
        assertNotSame(str3, str4);
    }
}