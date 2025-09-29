package com.example.service;

import com.example.model.User;
import com.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthService {

    @Autowired
    private UserRepository userRepository;

    // Authenticate user
    public String authenticate(String username, String password) {
        Optional<User> optionalUser = userRepository.findByUsername(username); // returns Optional<User>
        if (optionalUser.isPresent()) {
            User user = optionalUser.get(); // unwrap Optional
            if (user.getPassword().equals(password)) {
                return "token_for_" + username; // replace with JWT if needed
            }
        }
        return null;
    }

    // Register user
    public boolean registerUser(String username, String password) {
        Optional<User> optionalUser = userRepository.findByUsername(username);
        if (optionalUser.isPresent()) {
            return false; // username already exists
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userRepository.save(user);
        return true;
    }
}
