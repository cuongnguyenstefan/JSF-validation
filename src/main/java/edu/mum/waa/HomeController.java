package edu.mum.waa;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.waa.model.Entry;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		Entry entry = new Entry();
		model.addAttribute("entry", entry );
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homeSubmit(Model model, @Validated Entry entry, BindingResult result) {
		if (result.hasErrors()) {
			return "home";
		}
		model.addAttribute("valid_entry", entry);
		return "submit";
	}
	
	
	
}
