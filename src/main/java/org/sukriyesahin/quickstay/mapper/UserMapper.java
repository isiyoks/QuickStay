package org.sukriyesahin.quickstay.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import org.sukriyesahin.quickstay.model.user.User;

/**
 * Mapper interface for converting between RegistrationDTO and User entities.
 * Utilizes MapStruct for automatic mapping.
 */
@Mapper(componentModel = "spring")
public interface UserMapper {

    UserMapper INSTANCE = Mappers.getMapper(UserMapper.class);

    /**
     * Converts a RegistrationDTO to a User entity.
     *
     * @param registrationDTO the registration data transfer object
     * @return the corresponding User entity
     */
    @Mapping(source = "username", target = "username")
    @Mapping(source = "email", target = "email")
    @Mapping(source = "firstName", target = "firstName")
    @Mapping(source = "lastName", target = "lastName")
    @Mapping(source = "password", target = "password")
    User registrationDtoToUser(RegistrationDTO registrationDTO);
}
