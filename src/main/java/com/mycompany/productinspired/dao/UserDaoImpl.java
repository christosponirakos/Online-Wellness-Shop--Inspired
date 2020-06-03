package com.mycompany.productinspired.dao;

import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import com.mycompany.productinspired.entities.User;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements IUserDao {

    @Override
    public List<User> findAllUsers() {
        Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
    }

    @Override
    public User findById(int id) {
        User user = getByKey(id);
        if (user != null) {
            return user;
        }
        return null;
    }

    
}
