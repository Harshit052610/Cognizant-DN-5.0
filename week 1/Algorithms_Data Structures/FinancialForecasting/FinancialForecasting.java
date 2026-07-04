package FinancialForecasting;

public class FinancialForecasting {

    public static double calculateFutureValue(double presentValue, double growthRate, int periods) {
        if (periods < 0) {
            throw new IllegalArgumentException("Number of periods cannot be negative.");
        }
        if (periods == 0) {
            return presentValue;
        }
        return calculateFutureValue(presentValue * (1 + growthRate), growthRate, periods - 1);
    }
}