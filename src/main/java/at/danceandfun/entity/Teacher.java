package at.danceandfun.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.Type;
import org.joda.time.LocalDate;
import org.springframework.security.core.GrantedAuthority;

import at.danceandfun.role.RoleTeacher;
import at.danceandfun.util.PatternConstants;

@Entity
@Table(name = "TEACHER")
@PrimaryKeyJoinColumn(name = "P_ID")
public class Teacher extends Person {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    @Column(name = "BIRTHDAY")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    @NotNull
    @Past
    private LocalDate birthday;

    @Column(name = "SVNR")
    @Pattern(regexp = PatternConstants.SVNR_PATTERN, message = "{pattern.svnr}")
    @Size(min = 4, max = 4, message = "{size.teacher.svnr}")
    private String svnr;

    @Column(name = "SALARY")
    @Min(value = 0, message = "{min.values.positive}")
    private Double salary;

    @Column(name = "ENGAGEMENTDATE")
    @Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDate")
    private LocalDate engagementDate;

    @Column(name = "COMMENT")
    private String comment;

    @Transient
    private String tempStyles;

    @Transient
    private String tempCourses;

    @Transient
    private String tempStyleNames;

    @Transient
    private String tempCourseNames;

    @OneToMany(mappedBy = "teacher")
    private List<Course> courses = new ArrayList<Course>();

    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(name = "STYLE_TEACHER", joinColumns = { @JoinColumn(name = "P_ID") }, inverseJoinColumns = { @JoinColumn(name = "S_ID") })
    private List<Style> styles = new ArrayList<Style>();

    public Teacher() {
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getSvnr() {
        return svnr;
    }

    public void setSvnr(String svnr) {
        this.svnr = svnr;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public LocalDate getEngagementDate() {
        return engagementDate;
    }

    public void setEngagementDate(LocalDate engagementDate) {
        this.engagementDate = engagementDate;
    }

    @JsonIgnore
    public List<Course> getCourses() {
        return courses;
    }

    @JsonIgnore
    public List<Course> getEnabledCourses() {
        List<Course> enabledCourses = new ArrayList<Course>();
        for (Course course : courses) {
            if (course.isEnabled()) {
                enabledCourses.add(course);
            }
        }
        return enabledCourses;

    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public List<Style> getStyles() {
        return styles;
    }

    public void setStyles(List<Style> styles) {
        this.styles = styles;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getTempStyles() {
        return tempStyles;
    }

    public void setTempStyles(String tempStyles) {
        this.tempStyles = tempStyles;
    }

    public String getTempCourses() {
        return tempCourses;
    }

    public void setTempCourses(String tempCourses) {
        this.tempCourses = tempCourses;
    }

    public String getTempStyleNames() {
        return tempStyleNames;
    }

    public void setTempStyleNames(String tempStyleNames) {
        this.tempStyleNames = tempStyleNames;
    }

    public String getTempCourseNames() {
        return tempCourseNames;
    }

    public void setTempCourseNames(String tempCourseNames) {
        this.tempCourseNames = tempCourseNames;
    }

    @Transient
    public String getIcon() {
        return "icon-user";
    }

    @Transient
    public String getObjectName() {
        return "teacher";
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new RoleTeacher());
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
