package lithan.rst.carportal.services;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lithan.rst.carportal.daos.RoleRepository;
import lithan.rst.carportal.daos.UserRepository;
import lithan.rst.carportal.entities.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	UserRepository repo;
	
	@Autowired
	private RoleRepository roleRepository;
	
	public void save(User user) {
		System.out.println("----------" + roleRepository.findAll());
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		
		repo.save(user);
	}
	
	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}
	
	public User get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}
	

}
