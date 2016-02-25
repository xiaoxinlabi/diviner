package info.puton.product.test.service;

import info.puton.product.test.model.Person;

/**
 * Created by Pauline on 16/2/24.
 */
public interface IPersonService {

    Person selectByAge(Integer age);

}
