package at.danceandfun.service;

import java.util.List;

import at.danceandfun.entity.Course;
import at.danceandfun.entity.Participant;
import at.danceandfun.entity.Teacher;

public interface SearchManager {

    public List<Participant> searchParticipants(String searchTerm);

    public List<Teacher> searchTeachers(String searchTerm);

    public List<Teacher> searchParents(String searchTerm);

    public List<Course> searchCourses(String query);
}
