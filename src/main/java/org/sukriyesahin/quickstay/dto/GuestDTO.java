package org.sukriyesahin.quickstay.dto;

import lombok.Data;

@Data
public class GuestDTO {
    private String firstName;
    private String lastName;
    private boolean isChild;

    public boolean isChild() {
        return isChild;
    }

    public void setChild(boolean isChild) {
        this.isChild = isChild;
    }
}
