package api.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RestController {

	@RequestMapping(value = "/test")
	public String itemSearch(Model model) {

		System.out.println("itemSearch");
		return "test";
	}
}
