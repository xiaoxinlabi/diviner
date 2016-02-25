package info.puton.product.test.dao;

import info.puton.product.test.model.Person;

/**
 * Created by Pauline on 16/2/24.
 */
public interface PersonMapper {

    Person selectByAge(Integer age);

}
