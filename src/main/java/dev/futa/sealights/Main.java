package dev.futa.sealights;

import org.springframework.web.client.RestTemplate;

public class Main {

    public static void main(String[] args) {

        new RestTemplate().getForEntity(
            "http://localhost:8080/echo/asdas",
            String.class);
        System.out.println("Hello FTV! These are just tests to run");
    }
}