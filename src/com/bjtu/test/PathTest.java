package com.bjtu.test;

public class PathTest {
	
	public void printRootPath(){
		String rootPath = getClass().getResource("").getFile().toString();
		System.out.println(rootPath);
	}
	
	public static void main(String[] args){
		PathTest test = new PathTest();
		test.printRootPath();
	}
	
}
