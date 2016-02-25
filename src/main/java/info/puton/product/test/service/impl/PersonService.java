package info.puton.product.test.service.impl;

import info.puton.product.test.dao.PersonMapper;
import info.puton.product.test.model.Person;
import info.puton.product.test.service.IPersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Pauline on 16/2/24.
 */
@Service
public class PersonService implements IPersonService {

    @Resource
    PersonMapper personMapper;

    @Override
    public Person selectByAge(Integer age) {
        return personMapper.selectByAge(age);
    }
}
