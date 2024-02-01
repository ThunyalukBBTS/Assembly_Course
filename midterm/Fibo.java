package midterm;

public class Fibo {
    public static void main(String[] args) {
        for (int i = 0; i < 10; i++) {
            System.out.println(i + " : " + fibonacci(i));
        }
    }

    static int fibonacci(int n) {
        if (n == 0 || n == 1) {
            return n;
        } else {
            return fibonacci(n-2) + fibonacci(n-1);
        }
    }
}
