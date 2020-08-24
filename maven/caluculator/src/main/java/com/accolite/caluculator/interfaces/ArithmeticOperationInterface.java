package com.accolite.caluculator.interfaces;

public interface ArithmeticOperationInterface {

	public int add(int a, int b);

	public int subtract(int a, int b);

	public int multiply(int a, int b);

	public double divide(int a, int b) throws ArithmeticException;
}
