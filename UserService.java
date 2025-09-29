package com.example.service;

import com.example.model.User;
import java.util.List;

public interface UserService {

    boolean registerUser(User user);
    User authenticate(String username, String password);
    List<User> getAllUsers();
    User getUserById(Long id);
    User updateUser(Long id, User user);
    boolean deleteUser(Long id);
}
