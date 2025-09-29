package com.example.controller;

import com.example.model.User;
import com.example.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class WebController {

    @Autowired
    private UserService userService;

    // Login page
    @GetMapping({"/", "/login"})
    public String loginPage() {
        return "user/login"; // login.jsp
    }

    // Handle login form
    @PostMapping("/login")
    public String login(HttpServletRequest request, Model model) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userService.authenticate(username, password);
        if (user == null) {
            model.addAttribute("message", "Invalid username or password!");
            return "user/login";
        }

        request.getSession().setAttribute("user", user);
        return "redirect:/user/summary";
    }

    // Register page
    @GetMapping("/register")
    public String registerPage() {
        return "user/register"; // register.jsp
    }

    // Handle register form
    @PostMapping("/register")
    public String registerUser(HttpServletRequest request, Model model) {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            model.addAttribute("message", "Passwords do not match!");
            return "user/register";
        }

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        boolean success = userService.registerUser(user);
        if (!success) {
            model.addAttribute("message", "Username already exists!");
            return "user/register";
        }

        model.addAttribute("message", "Registration successful! Please login.");
        return "user/login";
    }

    // Logout
    @GetMapping("/logout-success")
    public String logoutPage(HttpServletRequest request) {
        request.getSession().invalidate();
        return "user/logout"; // logout.jsp
    }

    // User summary page
    @GetMapping("/user/summary")
    public String userSummary() {
        return "user/summary"; // summary.jsp
    }

    // Optional: general pages
    @GetMapping("/home")
    public String home() {
        return "home"; // home.jsp
    }

    @GetMapping("/hello")
    public String hello() {
        return "hello"; // hello.jsp
    }

    @GetMapping("/error")
    public String error() {
        return "error"; // error.jsp
    }
}
