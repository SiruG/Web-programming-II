package com.example.dao;

import com.example.model.User;
import java.util.List;
import java.util.Optional;

/**
 * Data Access Object interface for User operations
 */
public interface UserDAO {

    // Save a new user
    User save(User user);

    // Find user by username
    Optional<User> findByUsername(String username);

    // Check if user exists by username
    boolean existsByUsername(String username);

    // Find user by ID
    Optional<User> findById(Long id);

    // Get all users
    List<User> findAll();

    // Update an existing user
    User update(User user);

    // Delete user by ID
    boolean deleteById(Long id);

    // Delete user by username
    boolean deleteByUsername(String username);
}
