package co.simplon.totobusiness;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TotoService {

    @Autowired
    private TotoRepository repository;

    public TotoDto hello() {
	return repository.findProjectedById(1L);
    }

}
