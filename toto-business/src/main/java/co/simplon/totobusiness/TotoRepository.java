package co.simplon.totobusiness;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TotoRepository extends JpaRepository<Toto, Long> {

    TotoDto findProjectedById(long l);

}
