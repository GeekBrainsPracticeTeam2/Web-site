package ru.koshevoy.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;

@Service
public class ReviewService {

    private static final Logger logger = LoggerFactory.getLogger(ReviewService.class);

    public String getListReviews(ArrayList listReviews){
        listReviews.forEach(value -> System.out.println(value));
        return "";
    }

    public String getTitle(String name) {

        logger.debug("getTitle() is executed! $name : {}", name);

        if(StringUtils.isEmpty(name)){
            return "Hello World";
        }else{
            return "Hello " + name;
        }

    }

}