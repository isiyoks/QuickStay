package org.sukriyesahin.quickstay.service;

import org.sukriyesahin.quickstay.model.user.Role;

public interface RoleService {
    Role findRoleByName(String name);
    Role createRole(String name);
}
