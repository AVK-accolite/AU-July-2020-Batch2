package com.accolite.caluculator2;

import java.util.Scanner;
import com.accolite.caluculator.implementations.AirthmeticOperationImpl;
import com.accolite.caluculator.interfaces.AirthmeticOperationInterface;

public class App 
{
    public static void main( String[] args )
    {

    	Scanner s = new Scanner(System.in);
    	AirthmeticOperationInterface airthmeticResults = new AirthmeticOperationImpl();
    	System.out.println("Enter two interger value for performing operations :");
        int a = s.nextInt();
        int b = s.nextInt();
        
        int addResult = airthmeticResults.add(a, b);
        System.out.println("Addition Results : " + addResult);
        
        int subtractResult = airthmeticResults.subtract(a, b);
        System.out.println("Subtraction Results : " + subtractResult);
        
        int multiplyResult = airthmeticResults.multiply(a, b);
        System.out.println("Multiplication Results : " + multiplyResult);
        
        double divideResult = airthmeticResults.divide(a, b);
        System.out.println("Addition Results : " + divideResult);
        
        s.close();
        
    }
}
