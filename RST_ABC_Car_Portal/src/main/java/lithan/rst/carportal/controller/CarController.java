package lithan.rst.carportal.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lithan.rst.carportal.services.BidService;
import lithan.rst.carportal.services.CarService;
import lithan.rst.carportal.services.UserService;
import lithan.rst.carportal.entities.Car;
import lithan.rst.carportal.entities.CarBidding;
import lithan.rst.carportal.entities.User;

@Controller
public class CarController {
	
	private static Logger logger = LoggerFactory.getLogger(CarController.class);
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private BidService carbidService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/",  method= RequestMethod.GET)
    public String handleRootRequest(Model model) {
        return "redirect:home";
    }
	
	@RequestMapping(value="/home",  method= RequestMethod.GET)
    public String home() {
        return "home";
    }
	
	@RequestMapping(value="cars",  method= RequestMethod.GET)
    public String viewCars(Model model) {
        List<Car> cars = carService.getAllCars();
        if(!CollectionUtils.isEmpty(cars)) {
            model.addAttribute("cars", cars);
        }
        return "car_list";
    }
	
	@RequestMapping(value="/new_car")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("To show add new car page");
		Car car = new Car();
		model.put("car", car);
		return "modal";
	}
	
	@RequestMapping(value="cars",  method = {RequestMethod.POST, RequestMethod.PUT})
    public String saveCar(@RequestParam(value="id", required = false) Long id,
                            @RequestParam("make") String make,
                            @RequestParam("model") String car_model,
                            @RequestParam("registration") String registration,
                            @RequestParam("price") String price,
                            @RequestParam(value="category_id", required=false) Integer category_id,
                            @RequestParam(value="category_name", required=false) String categoryName,
                            Model model) {
    	
    	System.out.println("Save & Update new car");
    	
    	Car car = new Car();
        car.setId(id != null ? id: 0);
        car.setMake(make);
        car.setModel(car_model);
        car.setRegistration(registration);
        car.setPrice(price);

        logger.debug("Car make:{}, model: {}", car.getMake(),car.getModel(),car.getRegistration(),car.getPrice());
        
        Car savedCar = carService.saveCar(car);
        		
        model.addAttribute("cars", carService.getAllCars());
        
        return "car_list";
    }
	
	@RequestMapping("/car_detail")
	public ModelAndView viewCar(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("car_detail");
		Car car = carService.get(id);
		mav.addObject("car", car);
		return mav;
	}
	
	@RequestMapping("/car_bidding")
	public ModelAndView viewBid(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("bidding");
		Car car = carService.get(id);
		mav.addObject("car", car);
		mav.addObject("bidinfo", carbidService.listBidInfo((car)));
		return mav;
	}
	
	@RequestMapping(value="car_bidding", method = {RequestMethod.POST})
	public  String saveBit(@RequestParam(value="id", required = false) Long id,
							@RequestParam("bitprice") String bidderPrice,
							Model model) {
		String uname="";
		Object principal=SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		   if(principal instanceof UserDetails) {
			    uname=((UserDetails) principal).getUsername();
			 
		   }
		   else {
			    uname=principal.toString();
		   }
		   
		   Long carid=id;
		   Car car = carService.get(id);
		   User user=userService.getUserByName(uname);
		   Date cur_time=new Date();
		   

	       CarBidding carBitInfo = new CarBidding();
	       carBitInfo.setBidderName(uname);
	       carBitInfo.setBidderPrice(bidderPrice);
	       carBitInfo.setCar(car);
	       carBitInfo.setUser(user);
	       carBitInfo.setBid_date_time(cur_time);
	      
	       logger.debug("Car Bidder Price:{}, Car ID: {}", carBitInfo.getBidderPrice(),carBitInfo.getId(),carBitInfo.getBidderName(),carBitInfo.getCar());
	       
	       CarBidding savedCar = carbidService.save(carBitInfo);

	       model.addAttribute("car", car);		
	       model.addAttribute("bidinfo", carbidService.listBidInfo(car));
	       
	       return "bidding";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editCarForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_car");
		Car car = carService.get(id);
		mav.addObject("car", car);
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteCar(@RequestParam long id) {
		carService.delete(id);
		return "redirect:/cars";		
	}
	
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		List<Car> result = carService.search(keyword);
		ModelAndView mav = new ModelAndView("search_result");
		mav.addObject("keyword", keyword);
		mav.addObject("search_cars", result);
		return mav;		
	}
	
	

	

}
