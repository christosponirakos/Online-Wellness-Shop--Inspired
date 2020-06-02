package com.mycompany.productinspired.entities;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.transaction.annotation.Transactional;

@Entity
@Transactional
@Table(name = "users", catalog = "wellness", schema = "")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Basic(optional = false)
    @Size(min = 1, max = 30)
    @Column(name = "sso_id", nullable = false, unique = true, length = 30)
    private String userName;

    @Basic(optional = false)
    @Size(min = 1, max = 100)
    @Column(nullable = false, length = 100)
    private String password;

    @Basic(optional = true)
    @Size(min = 1, max = 45)
    @Column(name = "first_name", length = 45)
    private String firstName;

    @Basic(optional = true)
    @Size(min = 1, max = 45)
    @Column(name = "last_name", length = 45)
    private String lastName;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(length = 25, unique = true)
    private String email;

    @Basic(optional = true)
    @Size(min = 1, max = 60)
    @Column(length = 60)
    private String address;

    @Basic(optional = true)
    @Size(min = 1, max = 45)
    @Column(length = 45, unique = true)
    private String telephone;

    public User() {
    }

    public User(Integer id) {
        this.id = id;
    }

    public User(String firstName, String lastName, String email, String address, String telephone) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.address = address;
        this.telephone = telephone;
    }

    public User(Integer id, String firstName, String lastName, String email, String address, String telephone) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.address = address;
        this.telephone = telephone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.id);
        hash = 59 * hash + Objects.hashCode(this.userName);
        hash = 59 * hash + Objects.hashCode(this.password);
        hash = 59 * hash + Objects.hashCode(this.firstName);
        hash = 59 * hash + Objects.hashCode(this.lastName);
        hash = 59 * hash + Objects.hashCode(this.email);
        hash = 59 * hash + Objects.hashCode(this.address);
        hash = 59 * hash + Objects.hashCode(this.telephone);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        return true;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", userName=" + userName + ", password=" + password + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", address=" + address + ", telephone=" + telephone + '}';
    }

    
}
