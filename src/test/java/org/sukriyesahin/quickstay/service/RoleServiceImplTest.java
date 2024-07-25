package org.sukriyesahin.quickstay.service.impl;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sukriyesahin.quickstay.model.user.Role;
import org.sukriyesahin.quickstay.repository.RoleRepository;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class RoleServiceImplTest {

    @Mock
    private RoleRepository roleRepository;

    @InjectMocks
    private RoleServiceImpl roleService;

    @Test
    void findRoleByName() {
        Role role = new Role(1L, "ROLE_USER");
        when(roleRepository.findByName("ROLE_USER")).thenReturn(Optional.of(role));

        Role foundRole = roleService.findRoleByName("ROLE_USER");

        assertThat(foundRole).isEqualTo(role);
    }
}