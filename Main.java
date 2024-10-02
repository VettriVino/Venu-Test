interface Animal{
    void display();  
}
interface Mammal{
    void display1();
}
class Dog implements Animal,Mammal{
    public void display(){
        System.out.println("Dog Barks");
    }
    public void display1(){
        System.out.println("dog lives in the land");
    }
}
public class Main{
    public static void main(String args[]){
        Dog d=new Dog();      
    }
}