package ru.koshevoy.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.RedirectView;
import ru.koshevoy.model.Review;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ReviewController {
    private final Logger logger = LoggerFactory.getLogger(ReviewController.class);
    private final List<Review> listReviews = new ArrayList<Review>();

    @RequestMapping(value = "/reviews", method = RequestMethod.GET)
    public ModelAndView getReviewPage() {
        logger.info("hfkjhgkjhgkjghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh!");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("review", new Review());
        modelAndView.setViewName("reviews/reviews");
        return modelAndView;
    }

    @RequestMapping(value = "/reviews", method = RequestMethod.POST)
    public ModelAndView checkUser(@Validated @ModelAttribute("review") Review review, BindingResult bindingResult, RedirectAttributes redirectAttributes) {

        ModelAndView modelAndView = new ModelAndView();
        if (!bindingResult.hasErrors()) {
            RedirectView redirectView = new RedirectView("result");
            redirectView.setStatusCode(HttpStatus.MOVED_PERMANENTLY);
            modelAndView.setView(redirectView);
            redirectAttributes.addFlashAttribute(review);
            listReviews.add(review);
        } else {
            modelAndView.setViewName("index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String goMainPage(HttpServletRequest request) {
        Map<String, ?> map = RequestContextUtils.getInputFlashMap(request);
        if (map != null) {
            logger.info("It is redirect!");
        } else {
            logger.info("It is update!");
        }
        return "reviews/result";
    }

}
