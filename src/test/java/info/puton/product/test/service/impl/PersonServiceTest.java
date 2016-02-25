package info.puton.product.test.service.impl;

import info.puton.product.common.feature.test.TestSupport;
import info.puton.product.test.dao.PersonMapper;
import info.puton.product.test.service.IPersonService;
import org.junit.Test;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * Created by Pauline on 16/2/24.
 */
public class PersonServiceTest extends TestSupport {


    @Resource
    PersonMapper personMapper;

    @Test
    public void testSelectByAge() throws Exception {

        System.out.println(personMapper.selectByAge(18));

    }
}