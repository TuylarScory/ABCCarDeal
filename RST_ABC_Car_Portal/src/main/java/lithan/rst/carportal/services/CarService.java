package lithan.rst.carportal.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lithan.rst.carportal.controller.CarController;
import lithan.rst.carportal.daos.CarRepository;
import lithan.rst.carportal.entities.Car;
import lithan.rst.carportal.entities.Rating;

@Service
@Transactional
public class CarService {
	
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);
	
	@Autowired
	private CarRepository carRepository;
	
	public List<Car> getAllCars() {
		return carRepository.findAll();
	}
	
	public Optional<Car> findCarByModel(String Model) {
		return carRepository.findByModel(Model);
	}
	
	public Car saveCar(Car car) {
		Car dbcar = car;
		if (car.getId() > 0 ) {
			Optional<Car> tmpStore = carRepository.findById(car.getId());
			if(tmpStore.isPresent()) {
				dbcar = tmpStore.get();
				dbcar.setMake(car.getMake());
				dbcar.setModel(car.getModel());
				dbcar.setRegistration(car.getRegistration());
				dbcar.setPrice(car.getPrice());
			}
		}
		Car savedCar = carRepository.save(dbcar);
		return savedCar;
	}
	
	public Car get(Long id) {
		return carRepository.findById(id).get();
	}
	
	public void delete(Long id) {
		carRepository.deleteById(id);
	}
	
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
	}
	
	public List<Car> getAllBid() {
		return carRepository.findAll();
	}
	

}
