package junit.aaa;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class AAATest {

    private Calculator calculator;

    @Before
    public void setUp() {
        calculator = new Calculator();
        System.out.println("Setup method executed before each test.");
    }

    @After
    public void tearDown() {
        calculator = null;
        System.out.println("Teardown method executed after each test.");
    }

    @Test
    public void testAddition() {
        // Arrange
        int a = 10;
        int b = 5;
        int expectedSum = 15;

        // Act
        int actualSum = calculator.add(a, b);

        // Assert
        assertEquals(expectedSum, actualSum);
        System.out.println("testAddition executed.");
    }

    @Test
    public void testSubtraction() {
        // Arrange
        int a = 10;
        int b = 5;
        int expectedDifference = 5;

        // Act
        int actualDifference = calculator.subtract(a, b);

        // Assert
        assertEquals(expectedDifference, actualDifference);
        System.out.println("testSubtraction executed.");
    }
}

class Calculator {
    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }
}
