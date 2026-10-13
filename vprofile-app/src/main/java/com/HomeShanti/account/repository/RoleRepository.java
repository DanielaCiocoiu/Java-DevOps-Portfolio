package com.HomeShanti.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.HomeShanti.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
