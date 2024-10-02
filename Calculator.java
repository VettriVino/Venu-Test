import java.util.Scanner;
public class Calculator {
    public static double add (double a,double b){
        return a+b;
    }
    public static double sub (double a,double b){
        return a-b;
    }
    public static double mul (double a,double b){
        return a*b;
    }
    public static double divide (double a,double b){
        if(b==0){
            System.out.println("error");
        }
        return a/b;
    }
    public static void main(String args[]){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number 1:");
        double n1=scanner.nextDouble();
        System.out.println("Enter number 2:");
        double n2=scanner.nextDouble();
        System.out.println("Addition of two number is"+add(n1,n2));
        System.out.println("Subtraction of two numbers is"+sub(n1,n2));
        System.out.println("Multiplication of two numbers is"+mul(n1,n2));
        System.out.println("Division of two numbers"+divide(n1,n2));
        scanner.close();
    }
    
}
