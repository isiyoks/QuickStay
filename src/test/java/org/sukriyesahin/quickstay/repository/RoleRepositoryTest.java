package org.sukriyesahin.quickstay.repository;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.sukriyesahin.quickstay.model.user.Role;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
class RoleRepositoryTest {

    @Autowired
    private RoleRepository roleRepository;

    @Test
    void findByName() {
        Optional<Role> role = roleRepository.findByName("APP_USER"); // Assuming you have a role with this name

        assertThat(role).isPresent();
    }

    @ParameterizedTest
    @ValueSource(strings = {"ROLE_USER", "ROLE_ADMIN", "ROLE_GUEST"})
    void findByName(String roleName) {
        Optional<Role> role = roleRepository.findByName(roleName);
        assertThat(role).isNotPresent();
    }
}