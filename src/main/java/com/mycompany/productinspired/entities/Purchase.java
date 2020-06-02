/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.productinspired.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ticho
 */
@Entity
@Transactional
@Table(name = "purchases", catalog = "wellness", schema = "")

public class Purchase implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(nullable = false)
    private int id;

    @Basic(optional = false)
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;

    @Basic(optional = false)
    @Column(name = "user_id", nullable = false)
    private int userId;

    @Basic(optional = false)
    @NotNull
    @Column(nullable = false)
    private short pending;

    public Purchase() {
    }

    public Purchase(int id) {
        this.id = id;
    }

    public Purchase(int id, Date date, int userId, short pending) {
        this.id = id;
        this.date = date;
        this.userId = userId;
        this.pending = pending;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public short getPending() {
        return pending;
    }

    public void setPending(short pending) {
        this.pending = pending;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + this.id;
        hash = 29 * hash + Objects.hashCode(this.date);
        hash = 29 * hash + this.userId;
        hash = 29 * hash + this.pending;
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
        final Purchase other = (Purchase) obj;
        if (this.id != other.id) {
            return false;
        }
        if (this.userId != other.userId) {
            return false;
        }
        if (this.pending != other.pending) {
            return false;
        }
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Purchase{" + "id=" + id + ", date=" + date + ", userId=" + userId + ", pending=" + pending + '}';
    }

}
