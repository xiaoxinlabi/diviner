package info.puton.product.diviner.service.impl;

import info.puton.product.common.feature.test.TestSupport;
import info.puton.product.diviner.dao.DivinerMapper;
import info.puton.product.diviner.model.Diviner;
import org.junit.Test;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * Created by Pauline on 16/2/24.
 */
public class NumberServiceImplTest extends TestSupport {

    @Resource
    DivinerMapper divinerMapper;

    @Test
    public void testSelectByPrimaryKey() throws Exception {

        System.out.println(divinerMapper.selectByAge(18));

    }
}