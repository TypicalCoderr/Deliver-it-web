package com.typicalcoderr.Deliverit.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import java.time.Instant;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity (name = "user")
public class User {

    @Id
    @NotEmpty(message = "Email is required")
    @Column(nullable = false, unique = true)
    private String email;

    @NotEmpty(message = "First name is required")
    @Column(nullable = false)
    private String firstName;

    @NotEmpty(message = "Last name is required")
    @Column(nullable = false)
    private String lastName;

    @NotEmpty(message = "Password is required")
    @Column(nullable = false)
    private String password;

    @NotEmpty(message = "Phone number is required")
    @Column(nullable = false)
    @Pattern(regexp="(^$|[0-9]{10})",message = "Incorrect Mobile Number")
    private String contactNumber;

    @NotEmpty(message = "Role is required")
    @Column(nullable = false)
    private String userRole;

    private Instant joinedOn;

}
