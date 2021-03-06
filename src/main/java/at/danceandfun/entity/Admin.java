package at.danceandfun.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import at.danceandfun.role.RoleAdmin;

@Entity
@Table(name = "ADMIN")
@PrimaryKeyJoinColumn(name = "P_ID")
public class Admin extends Person {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    public Admin() {
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new RoleAdmin());
        return auth;
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

}
