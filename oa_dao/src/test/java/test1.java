import com.xn2001.oa.dao.DepartmentDao;
import com.xn2001.oa.entity.Department;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by 乐心湖 on 2020/2/20 11:15
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-dao.xml")
public class test1 {

    @Autowired
    DepartmentDao departmentDao;

    @Test
    public void test(){
        Department department = new Department();
        department.setSn("100");
        department.setAddress("gd");
        department.setName("gg");
        departmentDao.insert(department);
    }

    @Test
    public void test2(){
        Department select = departmentDao.select("10003");
        System.out.println(select.getAddress());
    }
}
