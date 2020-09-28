package com.test;

import org.apache.commons.lang3.StringUtils;

public class Main {
    private static final String HELLO = "Hello";
    public static void main(String[] args) {
        System.out.println("Hello World exist = " + StringUtils.containsIgnoreCase("Hello World", HELLO));
    }
}
