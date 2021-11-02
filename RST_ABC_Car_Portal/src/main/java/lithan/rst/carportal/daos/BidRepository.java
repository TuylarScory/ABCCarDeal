package lithan.rst.carportal.daos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import lithan.rst.carportal.entities.Car;
import lithan.rst.carportal.entities.CarBidding;

@Repository
public interface BidRepository extends JpaRepository<CarBidding, Long> {
	
	@Query("select b from CarBidding b where b.car in :carid")
	List<CarBidding> findByCarid(@Param("carid") Car car);

}
