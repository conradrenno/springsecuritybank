package com.devrenno.springsecuritybank;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;

@SpringBootApplication
@EnableMethodSecurity(securedEnabled = true, jsr250Enabled = true)
public class BankBackendSecurityTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(BankBackendSecurityTestApplication.class, args);
    }

}
