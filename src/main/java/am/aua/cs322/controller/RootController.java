package am.aua.cs322.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class RootController {

    @GetMapping("/")
    public String hello() {
        return "Hello";
    }
}
