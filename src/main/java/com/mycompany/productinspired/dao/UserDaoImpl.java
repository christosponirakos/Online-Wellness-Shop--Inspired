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

    @Override
    public boolean save(User user) {
         boolean notSaved = persist(user);
        if (notSaved) {
            return false;
        }
        return true;
        
         }

    @Override
    public boolean delete(int id) {
         User user = getByKey(id);
        if (user != null) {
            delete(user);
        }
        if (getByKey(id) == null) {
            return true;
        }
        return false;
         }

    @Override
    public boolean update(User user) {
       User user_db  = findById(user.getId());
        if ( user_db != null) {
             user_db.setAddress( user.getAddress());
             user_db.setEmail(user.getEmail());
             user_db.setFirstName(user.getFirstName());
             user_db.setLastName(user.getLastName());
             user_db.setPassword(user.getPassword());
             user_db.setTelephone(user_db.getTelephone());
             user_db.setUserName(user.getUserName());
            return save( user_db);
        } else {
            return false;
        }
          }

    
}
