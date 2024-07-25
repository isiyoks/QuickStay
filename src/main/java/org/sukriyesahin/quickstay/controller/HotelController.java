package org.sukriyesahin.quickstay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.sukriyesahin.quickstay.dto.HotelDetailsDTO;
import org.sukriyesahin.quickstay.service.HotelService;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

/**
 * Controller for handling hotel-related requests.
 * Provides endpoints for checking hotel availability and retrieving hotel details.
 */
@Controller
public class HotelController {

    @Autowired
    private HotelService hotelService;

    /**
     * Retrieves hotel details based on provided parameters.
     *
     * @param hotelId the ID of the hotel
     * @param checkInDateStr the check-in date as a string
     * @param checkOutDateStr the check-out date as a string
     * @param adults the number of adults
     * @param children the number of children
     * @param model the model to pass attributes to the view
     * @param redirectAttributes attributes for flash messages
     * @return the name of the view to render
     */
    @GetMapping("/availability/{hotelId}")
    public String getHotelDetails(@PathVariable Long hotelId,
                                  @RequestParam("checkInDate") String checkInDateStr,
                                  @RequestParam("checkOutDate") String checkOutDateStr,
                                  @RequestParam("adults") int adults,
                                  @RequestParam("children") int children,
                                  Model model,
                                  RedirectAttributes redirectAttributes) {
        int guestCount = adults + children;
        LocalDate checkInDate;
        LocalDate checkOutDate;

        try {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            checkInDate = LocalDate.parse(checkInDateStr, formatter);
            checkOutDate = LocalDate.parse(checkOutDateStr, formatter);
        } catch (DateTimeParseException e) {
            redirectAttributes.addFlashAttribute("error", "Invalid date format. Please use YYYY-MM-DD format.");
            return "redirect:/errorPage";
        }

        try {
            HotelDetailsDTO hotelDetails = hotelService.getHotelDetails(hotelId, checkInDate, checkOutDate, guestCount);
            model.addAttribute("hotel", hotelDetails);
            model.addAttribute("adults", adults);  // Add adults to the model
            model.addAttribute("children", children);  // Add children to the model
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Failed to retrieve hotel details: " + e.getMessage());
            return "redirect:/errorPage";
        }

        return "hotel-details";
    }
}
