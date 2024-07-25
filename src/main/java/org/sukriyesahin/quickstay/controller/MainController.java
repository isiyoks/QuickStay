package org.sukriyesahin.quickstay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.sukriyesahin.quickstay.dto.SearchDTO;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 * Controller for handling main page requests.
 * Provides an endpoint for the home page.
 */
@Controller
public class MainController {

    /**
     * Handles GET requests to the home page.
     * Initializes a SearchDTO with default values and adds it to the model.
     *
     * @param model the model to pass attributes to the view
     * @return the name of the view to render
     */
    @GetMapping("/")
    public String home(Model model) {
        SearchDTO searchDTO = new SearchDTO();
        LocalDate today = LocalDate.now();
        LocalDate tomorrow = today.plusDays(1);
        String defaultDateRange = today.format(DateTimeFormatter.ofPattern("M/d/yyyy")) +
                " to " +
                tomorrow.format(DateTimeFormatter.ofPattern("M/d/yyyy"));
        searchDTO.setDateRange(defaultDateRange);
        searchDTO.setAdults(2);
        model.addAttribute("searchDTO", searchDTO);
        return "index";
    }
}
