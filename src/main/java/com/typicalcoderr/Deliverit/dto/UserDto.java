package com.typicalcoderr.Deliverit.dto;

import com.typicalcoderr.Deliverit.domain.Warehouse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Created by IntelliJ IDEA.
 * User: Lahiru
 * Date: Thu
 * Time: 8:35 PM
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserDto {

    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private String contactNumber;
    private String userRole;
    private String joinedOn;
    private String city;
    private String warehouseNumber;
    private boolean isVerified;
    private boolean isBlacklisted;
    private Warehouse warehouse;
    private String matchingPassword;


    public UserDto(String email, String firstName, String lastName, String contactNumber, String userRole, String joinedOn, String city, String warehouseNumber, Boolean isVerified, Boolean isBlacklisted) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.contactNumber = contactNumber;
        this.userRole = userRole;
        this.joinedOn = joinedOn;
        this.city = city;
        this.warehouseNumber = warehouseNumber;
        this.isVerified = isVerified;
        this.isBlacklisted = isBlacklisted;
    }

    public UserDto(String email, String firstName, String lastName, String contactNumber, String userRole, String joinedOn, String city, Boolean isVerified, Boolean isBlacklisted) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.contactNumber = contactNumber;
        this.userRole = userRole;
        this.joinedOn = joinedOn;
        this.city = city;
        this.isVerified = isVerified;
        this.isBlacklisted = isBlacklisted;
    }
}
