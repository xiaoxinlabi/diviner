package info.puton.product.diviner.service.impl;

import info.puton.product.diviner.dao.DivinerMapper;
import info.puton.product.diviner.model.Diviner;
import info.puton.product.diviner.service.INumberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by taoyang on 2/23/16.
 */
@Service
public class NumberServiceImpl implements INumberService {

    @Resource
    private DivinerMapper divinerMapper;

    @Override
    public Diviner selectByPrimaryKey(String billId) {
        return divinerMapper.selectByPrimaryKey(billId);
    }
}
