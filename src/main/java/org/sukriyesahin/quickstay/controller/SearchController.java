package org.sukriyesahin.quickstay.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.sukriyesahin.quickstay.dto.HotelDTO;
import org.sukriyesahin.quickstay.dto.SearchDTO;
import org.sukriyesahin.quickstay.service.HotelService;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 * Controller for handling search-related requests.
 * Provides an endpoint for processing hotel search queries.
 */
@Controller
public class SearchController {

    private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

    @Autowired
    private HotelService hotelService;

    /**
     * Processes hotel search requests based on the provided parameters.
     *
     * @param destination the destination city or location
     * @param dateRange the date range for the stay
     * @param adults the number of adults
     * @param children the number of children
     * @param rooms the number of rooms
     * @param latitude the latitude of the search location
     * @param longitude the longitude of the search location
     * @param model the model to pass attributes to the view
     * @return the name of the view to render
     */
    @GetMapping("/search")
    public String processSearch(
            @RequestParam("destination") String destination,
            @RequestParam("dateRange") String dateRange,
            @RequestParam("adults") int adults,
            @RequestParam("children") int children,
            @RequestParam("rooms") int rooms,
            @RequestParam("latitude") double latitude,
            @RequestParam("longitude") double longitude,
            Model model) {
        logger.info("Search request received: destination={}, dateRange={}, adults={}, children={}, rooms={}, latitude={}, longitude={}",
                destination, dateRange, adults, children, rooms, latitude, longitude);

        // Split the dateRange string (if needed)
        String[] dates = dateRange.split(" to ");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        LocalDate checkInDate = LocalDate.parse(dates[0], formatter);
        LocalDate checkOutDate = LocalDate.parse(dates[1], formatter);

        // Create SearchDTO object
        SearchDTO searchDTO = new SearchDTO();
        searchDTO.setDestination(destination);
        searchDTO.setDateRange(dateRange);
        searchDTO.setCheckInDate(checkInDate);
        searchDTO.setCheckOutDate(checkOutDate);
        searchDTO.setAdults(adults);
        searchDTO.setChildren(children);
        searchDTO.setRooms(rooms);
        searchDTO.setLatitude(latitude);
        searchDTO.setLongitude(longitude);

        // Perform search logic using the searchDTO object
        List<HotelDTO> hotels = hotelService.findAvailableHotels(searchDTO);

        // Add search criteria and results to the model
        model.addAttribute("destination", destination);
        model.addAttribute("dates", dateRange);
        model.addAttribute("guests", adults + " Adults, " + children + " Children, " + rooms + " Rooms");
        model.addAttribute("hotels", hotels);
        model.addAttribute("searchDTO", searchDTO);
        logger.info("Search results: found {} hotels", hotels.size());
        return "search-results"; // Return the name of the Thymeleaf template for search results
    }
}
