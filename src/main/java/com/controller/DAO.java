package com.controller;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.table.Complain;
import com.table.Signup;

public class DAO {
HibernateTemplate template;

public HibernateTemplate getTemplate() {
	return template;
}

public void setTemplate(HibernateTemplate template) {
	this.template = template;
}
public void sinup(Signup s) {
	template.save(s);
}
public Signup getUserByAdno(long l) {
     
    String query = "from Signup where adno = ?";
    return (Signup) template.find(query, l).stream().findFirst().orElse(null);
}
public void fedback(Complain c) {
	template.save(c);
}
}
