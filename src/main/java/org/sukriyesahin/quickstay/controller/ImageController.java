package org.sukriyesahin.quickstay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.sukriyesahin.quickstay.service.ImageService;

/**
 * Controller for handling image-related requests.
 * Provides an endpoint to retrieve images by their ID.
 */
@RestController
public class ImageController {

    @Autowired
    private ImageService imageService;

    /**
     * Retrieves image data for the given image ID.
     *
     * @param imageId the ID of the image to retrieve
     * @return a ResponseEntity containing the image data and HTTP headers
     */
    @GetMapping("/image/{imageId}")
    public ResponseEntity<byte[]> getImage(@PathVariable Long imageId) {
        byte[] imageData = imageService.getImageData(imageId);
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type", "image/jpeg"); // Adjust based on your image type
        return new ResponseEntity<>(imageData, headers, HttpStatus.OK);
    }
}
