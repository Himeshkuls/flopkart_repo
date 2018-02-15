package com.iiitb.ooadvoid.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class SessionUtil
{

	private static SessionUtil instance = new SessionUtil();
	private SessionFactory sessionFactory;
	private ServiceRegistry serviceRegistry;

	public static SessionUtil getInstance()
	{
		return instance;
	}

	private SessionUtil()
	{
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		serviceRegistry = new StandardServiceRegistryBuilder().applySettings(
	            configuration.getProperties()).build();
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	}

	public static Session getSession()
	{
		Session session = getInstance().sessionFactory.openSession();

		return session;
	}
}