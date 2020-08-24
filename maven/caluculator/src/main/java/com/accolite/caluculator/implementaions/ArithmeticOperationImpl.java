package com.accolite.caluculator.implementaions;

import com.accolite.caluculator.interfaces.ArithmeticOperationInterface;

public class ArithmeticOperationImpl implements ArithmeticOperationInterface {

	public int add(int a, int b) {

		return a + b;
	}

	public int subtract(int a, int b) {

		return a - b;
	}

	public int multiply(int a, int b) {

		return a * b;
	}

	public double divide(int a, int b) throws ArithmeticException {
		if (a == 0) {
			throw new ArithmeticException();
		}
		return b / a;
	}

}
