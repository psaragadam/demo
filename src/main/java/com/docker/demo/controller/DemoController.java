package com.docker.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/healthcheck")
    public ResponseEntity<?> getHealthCheck(){
        return new ResponseEntity<>("Health Check status: Good",HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<?> run(){
        return new ResponseEntity<>("Success Response...",HttpStatus.OK);
    }
}
