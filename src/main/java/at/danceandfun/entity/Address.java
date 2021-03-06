package at.danceandfun.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import at.danceandfun.util.PatternConstants;

@Entity
@Table(name = "ADDRESS")
public class Address extends EntityBase {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "A_ID")
    @GeneratedValue
    private Integer aid;

    @Column(name = "STREET")
    @Size(min = 3, message = "{size.min}")
    @Pattern(regexp = PatternConstants.CITY_PATTERN, message = "{pattern.characters.city}")
    private String street;

    @Column(name = "NUMBER")
    @NotEmpty
    @Pattern(regexp = PatternConstants.ADDRESS_NUMBER_PATTERN, message = "{pattern.address.number}")
    private String number;

    @Column(name = "STAIR")
    @Min(value = 1, message = "{min.values.positive}")
    private Integer stair;

    @Column(name = "DOOR")
    @Min(value = 1, message = "{min.values.positive}")
    private Integer door;

    @Column(name = "ZIP")
    @NotNull
    @Min(value = 1000, message = "{min.address.zip}")
    private Integer zip;

    @Column(name = "CITY")
    @Size(min = 3, message = "{size.min}")
    @Pattern(regexp = PatternConstants.CITY_PATTERN, message = "{pattern.characters.city}")
    private String city;

    @Column(name = "ENABLED")
    private boolean enabled;

    @OneToMany(mappedBy = "address")
    private List<Performance> performances = new ArrayList<Performance>();

    @OneToMany(mappedBy = "address")
    private List<Person> persons = new ArrayList<Person>();

    @OneToMany(mappedBy = "address")
    private List<Course> courses = new ArrayList<Course>();

    public Address() {
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Integer getStair() {
        return stair;
    }

    public void setStair(Integer stair) {
        this.stair = stair;
    }

    public Integer getDoor() {
        return door;
    }

    public void setDoor(Integer door) {
        this.door = door;
    }

    public Integer getZip() {
        return zip;
    }

    public void setZip(Integer zip) {
        this.zip = zip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @JsonIgnore
    public List<Performance> getPerformances() {
        return performances;
    }

    public void setPerformances(List<Performance> performances) {
        this.performances = performances;
    }

    @JsonIgnore
    public List<Person> getPersons() {
        return persons;
    }

    public void setPersons(List<Person> persons) {
        this.persons = persons;
    }

    @JsonIgnore
    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public String toString() {
        return street + " " + number;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((aid == null) ? 0 : aid.hashCode());
        return result;
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
        Address other = (Address) obj;
        if (aid == null) {
            if (other.aid != null) {
                return false;
            }
        } else if (!aid.equals(other.aid)) {
            return false;
        }
        return true;
    }

}
