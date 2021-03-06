package at.danceandfun.dao;

import static org.junit.Assert.fail;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import at.danceandfun.entity.Admin;
import at.danceandfun.entity.Course;

@Transactional
@ContextConfiguration("classpath:test/test-context.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class AdminDaoTest {

    @Autowired
    private DaoBaseImpl<Admin> adminDao;

    @Autowired
    private DaoBaseImpl<Course> courseDao;

    public static Admin getValidAdmin() {
        Admin admin = new Admin();
        admin.setAddress(AddressDaoTest.getValidAddress());
        admin.setFirstname("first");
        admin.setLastname("last");
        admin.setTelephone("123456789");
        admin.setEmail("mail@mail.com");
        return admin;
    }

    @Test
    public void testSave() {
        adminDao.persist(getValidAdmin());
    }

    @Test
    public void testUpdate() {
        Admin admin = adminDao.getEnabledList().get(0);
        if (admin != null) {
            adminDao.merge(admin);
        } else {
            fail("database is empty");
        }
    }
}
