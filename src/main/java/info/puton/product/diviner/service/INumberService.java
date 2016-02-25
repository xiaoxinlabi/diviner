package info.puton.product.diviner.service;

import info.puton.product.diviner.model.Diviner;

import java.util.Map;

/**
 * Created by taoyang on 2/23/16.
 */
public interface INumberService {

    Diviner selectByPrimaryKey(String billId);

}
