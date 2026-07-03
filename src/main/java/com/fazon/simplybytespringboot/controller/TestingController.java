package com.fazon.simplybytespringboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestingController {

    @GetMapping("/")
    public String home() {
        return "Hello Everyone, Pipeline created and webhook configured";
    }

    @GetMapping("/api/health")
    public String health() {
        return "Hello Everyone, Pipeline change pannitom";
    }
}