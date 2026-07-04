package FinancialForecasting;

public class FinancialForecastingTest {
    public static void main(String[] args) {
        double presentValue = 1000.0;
        double growthRate = 0.05; // 5%
        int periods = 10;

        double futureValue = FinancialForecasting.calculateFutureValue(presentValue, growthRate, periods);
        System.out.println("Future Value after " + periods + " periods: " + futureValue);

        // Example of optimization discussion:
        // For optimization, memoization or dynamic programming can be used to store
        // intermediate results and avoid redundant calculations, especially for
        // overlapping subproblems in more complex recursive scenarios.
        // For this simple case, an iterative solution would be more efficient:
        // double iterativeFutureValue = presentValue;
        // for (int i = 0; i < periods; i++) {
        //     iterativeFutureValue *= (1 + growthRate);
        // }
        // System.out.println("Iterative Future Value: " + iterativeFutureValue);
    }
}