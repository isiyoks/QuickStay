package org.sukriyesahin.quickstay.mapper;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;
import org.sukriyesahin.quickstay.dto.RegistrationDTO;
import org.sukriyesahin.quickstay.model.user.User;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-07-25T03:24:55-0400",
    comments = "version: 1.4.2.Final, compiler: javac, environment: Java 17.0.12 (Amazon.com Inc.)"
)
@Component
public class UserMapperImpl implements UserMapper {

    @Override
    public User registrationDtoToUser(RegistrationDTO registrationDTO) {
        if ( registrationDTO == null ) {
            return null;
        }

        User user = new User();

        user.setUsername( registrationDTO.getUsername() );
        user.setEmail( registrationDTO.getEmail() );
        user.setFirstName( registrationDTO.getFirstName() );
        user.setLastName( registrationDTO.getLastName() );
        user.setPassword( registrationDTO.getPassword() );

        return user;
    }
}
