package co.simplon.totobusiness;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/toto")
public class TotoController {

    @GetMapping("/hello")
    String hello() {
	return "Hello Toto";
    }

}
