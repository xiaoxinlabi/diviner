package info.puton.product.diviner.dao;

import info.puton.product.diviner.model.Diviner;
import info.puton.product.test.model.Person;

public interface DivinerMapper {

    Diviner selectByPrimaryKey(String billId);

    Person selectByAge(Integer age);

}