package org.smart4j.chapter2.service;

import org.smart4j.chapter2.helper.DatabaseHelper;
import org.smart4j.chapter2.model.Customer;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/23.
 */
public class CustomerService {

    public List<Customer> getCustomerList(String keyword) {
        String sql = "select * from customer";
        return DatabaseHelper.queryEntityList(Customer.class, sql);
    }

    public List<Customer> getCustomerList() {
        return null;
    }

    public Customer getCustomer(long id) {
        return null;
    }

    public boolean createCustomer(Map<String, Object> filedMap) {
        return false;
    }

    public boolean updateCustomer(long id, Map<String, Object> filedMap) {
        return false;
    }

    public boolean deleteCustomer(long id) {
        return false;
    }
}
