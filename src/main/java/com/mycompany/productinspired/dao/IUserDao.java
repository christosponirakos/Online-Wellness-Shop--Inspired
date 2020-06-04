package com.mycompany.productinspired.dao;

import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import com.mycompany.productinspired.entities.User;

public interface IUserDao<T> {

//    public List<T> findAllUsers();
    public List<User> findAllUsers();

    public User findById(int id);
    
    public boolean save(User user);
    public boolean delete(int id);
    public boolean update(User user);
}
