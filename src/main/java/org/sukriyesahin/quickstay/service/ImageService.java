package org.sukriyesahin.quickstay.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.sukriyesahin.quickstay.model.hotel.Image;
import org.sukriyesahin.quickstay.repository.ImageRepository;

@Service
public class ImageService {

    @Autowired
    private ImageRepository imageRepository;

    public byte[] getImageData(Long imageId) {
        Image image = imageRepository.findById(imageId).orElseThrow(() -> new RuntimeException("Image not found"));
        return image.getData();
    }
}
