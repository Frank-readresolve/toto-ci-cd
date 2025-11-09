package co.simplon.totobusiness;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/toto")
public class TotoController {

    @Autowired
    private TotoService service;

    @GetMapping("/hello")
    TotoDto hello() {
	return service.hello();
    }

}
