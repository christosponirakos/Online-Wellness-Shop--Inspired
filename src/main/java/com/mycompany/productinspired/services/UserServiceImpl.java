package com.mycompany.productinspired.services;

import java.util.List;
import com.mycompany.productinspired.dao.IUserDao;
import com.mycompany.productinspired.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userservice")
@Transactional
public class UserServiceImpl implements IUserService{

    @Autowired
    private IUserDao dao;
    
    @Override
    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }

    @Override
    public User findById(int id) {
        return dao.findById(id);
    }
//
//    public boolean save(Trainer trainer) {
//        return dao.save(trainer);   
//    }
//
//    public boolean delete(int id) {
//        return dao.delete(id);
//    }
//
//    public boolean update(Trainer trainer) {
//        return dao.update(trainer);
//    }
    
}
