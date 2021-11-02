package lithan.rst.carportal.daos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import lithan.rst.carportal.entities.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByUserName(String name);

}
