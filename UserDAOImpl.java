package com.example.dao.impl;

import com.example.dao.UserDAO;
import com.example.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Optional;

@Repository
public class UserDAOImpl implements UserDAO {

    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private final RowMapper<User> userRowMapper = new RowMapper<User>() {
        @Override
        public User mapRow(ResultSet rs, int rowNum) throws SQLException {
            User user = new User();
            user.setId(rs.getLong("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setRole(rs.getString("role"));
            user.setEnabled(rs.getBoolean("enabled"));
            return user;
        }
    };

    @Override
    public User save(User user) {
        logger.info("Saving user: {}", user.getUsername());
        String sql = "INSERT INTO users (username, password, role, enabled) VALUES (?, ?, ?, ?)";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getRole());
            ps.setBoolean(4, user.isEnabled());
            return ps;
        }, keyHolder);
        user.setId(keyHolder.getKey().longValue());
        return user;
    }

    @Override
    public Optional<User> findByUsername(String username) {
        try {
            String sql = "SELECT id, username, password, role, enabled FROM users WHERE username = ?";
            User user = jdbcTemplate.queryForObject(sql, userRowMapper, username);
            return Optional.ofNullable(user);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    @Override
    public boolean existsByUsername(String username) {
        String sql = "SELECT COUNT(*) FROM users WHERE username = ?";
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, username);
        return count != null && count > 0;
    }

    @Override
    public Optional<User> findById(Long id) {
        try {
            String sql = "SELECT id, username, password, role, enabled FROM users WHERE id = ?";
            User user = jdbcTemplate.queryForObject(sql, userRowMapper, id);
            return Optional.ofNullable(user);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    @Override
    public List<User> findAll() {
        String sql = "SELECT id, username, password, role, enabled FROM users ORDER BY id";
        return jdbcTemplate.query(sql, userRowMapper);
    }

    @Override
    public User update(User user) {
        String sql = "UPDATE users SET username = ?, password = ?, role = ?, enabled = ? WHERE id = ?";
        jdbcTemplate.update(sql,
                user.getUsername(),
                user.getPassword(),
                user.getRole(),
                user.isEnabled(),
                user.getId());
        return user;
    }

    @Override
    public boolean deleteById(Long id) {
        String sql = "DELETE FROM users WHERE id = ?";
        int rows = jdbcTemplate.update(sql, id);
        return rows > 0;
    }

    @Override
    public boolean deleteByUsername(String username) {
        String sql = "DELETE FROM users WHERE username = ?";
        int rows = jdbcTemplate.update(sql, username);
        return rows > 0;
    }
}
