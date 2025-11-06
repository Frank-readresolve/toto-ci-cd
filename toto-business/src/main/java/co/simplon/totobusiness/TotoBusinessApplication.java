package co.simplon.totobusiness;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TotoBusinessApplication {

    public static void main(String[] args) {
	SpringApplication.run(TotoBusinessApplication.class, args);
    }

    @GetMapping("/ping")
    String ping() {
	return "pong";
    }

}
