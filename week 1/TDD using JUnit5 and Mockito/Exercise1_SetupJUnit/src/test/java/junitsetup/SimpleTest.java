package junitsetup;

import org.junit.Test;
import static org.junit.Assert.assertTrue;

public class SimpleTest {
    @Test
    public void testAddition() {
        int a = 5;
        int b = 3;
        assertTrue(a + b == 8);
    }
}