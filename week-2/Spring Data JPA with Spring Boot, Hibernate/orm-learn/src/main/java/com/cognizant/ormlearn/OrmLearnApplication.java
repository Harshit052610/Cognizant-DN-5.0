package com.cognizant.ormlearn;

import com.cognizant.ormlearn.model.Country;
import com.cognizant.ormlearn.repository.CountryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class OrmLearnApplication
        implements CommandLineRunner {

    @Autowired
    private CountryRepository repository;

    public static void main(String[] args) {
        SpringApplication.run(
                OrmLearnApplication.class,
                args
        );
    }

    @Override
    public void run(String... args) {

        repository.save(
                new Country("IN", "India")
        );

        System.out.println(
                repository.findAll()
        );
    }
}