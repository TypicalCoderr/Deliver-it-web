package com.typicalcoderr.Deliverit.Repository;

import com.typicalcoderr.Deliverit.domain.User;
import com.typicalcoderr.Deliverit.domain.Warehouse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    Optional<User> findUserByEmail(String email);
    Optional<User> findUserByContactNumber(String contactNumber);
    Optional<User> findUserByEmailAndIsBlackListed(String email, Boolean isBlacklisted);
    List <User> findUserByUserRole(String userRole);
    User findUserByUserRoleAndAndWarehouseIsLike(String role, Warehouse warehouse);
    List <User> findAllByWarehouse_WarehouseNumberAndUserRole(String warehouseNumber, String userRole);
}
