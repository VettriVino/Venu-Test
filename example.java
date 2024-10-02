class Animal{
    void display(){
        System.out.println("This animal lives in land");
    }
}
class Dog extends Animal{
    void display1(){
        System.out.println("The Dog barks");
    }
}
public class example{
    public static void main(String args[]){
        Dog obj = new Dog();
        obj.display();
        obj.display1();
    }
}
