package com.greatlearning.ems.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.greatlearning.ems.model.User;

public interface UserDao extends JpaRepository<User, Long>{

}
