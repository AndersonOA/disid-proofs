package com.disid.restful.repository;

import com.disid.restful.model.Customer;
import com.disid.restful.model.CustomerSearchForm;

import io.springlets.data.domain.GlobalSearch;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CustomerRepositoryCustom {

  Page<Customer> findByFirstNameLastName(CustomerSearchForm formBean, GlobalSearch search,
      Pageable pageable);

  long countByFirstNameLastName(CustomerSearchForm formBean);

  Page<Customer> findAll(GlobalSearch globalSearch, Pageable pageable);
}
