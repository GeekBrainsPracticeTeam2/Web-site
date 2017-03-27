package ru.koshevoy.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.koshevoy.model.Review;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ReviewController {
    private final Logger logger = LoggerFactory.getLogger(MainController.class);

    @RequestMapping(value="/reviews", method=RequestMethod.POST)
    public String greetingSubmit(@ModelAttribute Review review, Model model) {
        List<Review> reviewsList = new ArrayList<Review>();
        model.addAttribute("reviews", review);
        return "reviews";
    }

}
