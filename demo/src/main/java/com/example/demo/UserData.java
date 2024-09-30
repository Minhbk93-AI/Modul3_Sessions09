package com.example.demo;

import java.util.Scanner;

public class UserData {
    private int id;
    private String name;
    private String email;
    private int age;

    // Constructor
    public UserData(int id, String name, String email, int age) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.age = age;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void inputUserData(Scanner scanner) {
        this.id= Integer.parseInt(scanner.nextLine());
        this.age= Integer.parseInt(scanner.nextLine());
        this.email= scanner.nextLine();
        this.name= scanner.nextLine();
    }
}
