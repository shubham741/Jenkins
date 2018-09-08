package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloJenkins {

  @GetMapping("/hello")
	public String hello() {
		return "Hello From Jenkins and Docker";
	}
}
