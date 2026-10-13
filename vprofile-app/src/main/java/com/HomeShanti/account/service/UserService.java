package com.HomeShanti.account.service;

import java.util.List;

import com.HomeShanti.account.model.User;

/** {@author Danielat}!*/
public interface UserService {
	/** {@inheritDoc}} !*/
    void save(User user);
    /** {@inheritDoc}} !*/
    User findByUsername(String username);
    User findById(long id);
    /*public void updateUser(User user);*/
    public List <User> getList();
}
