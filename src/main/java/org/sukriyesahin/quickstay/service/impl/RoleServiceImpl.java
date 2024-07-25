package org.sukriyesahin.quickstay.service.impl;

import org.sukriyesahin.quickstay.model.user.Role;
import org.sukriyesahin.quickstay.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.sukriyesahin.quickstay.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

    private final RoleRepository roleRepository;

    @Autowired
    public RoleServiceImpl(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role findRoleByName(String name) {
        return roleRepository.findByName(name)
                .orElseThrow(() -> new RuntimeException("Role not found: " + name));
    }

    public Role createRole(String name) {
        if (roleRepository.findByName(name).isPresent()) {
            throw new RuntimeException("Role already exists: " + name);
        }
        Role role = new Role(null, name); // No need to set ID, it will be generated automatically
        return roleRepository.save(role);
    }
}
