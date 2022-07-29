package service;

public class CalculatorService {
    public static String calculate(double num1, double num2, String operator) {
        double total = 0;
        switch (operator) {
            case "+":
                total = num1 + num2;
                break;
            case "-":
                total = num1 - num2;
                break;
            case "*":
                total = num1 * num2;
                break;
            case "/":
                if(num2 == 0) {
                    return "lỗi chia hết cho 0";
                }
                total = num1 / num2;
                break;
        }
        return "Kết quả là: " + total;
    }
}
