package com.jsp.assignment.urlshortener.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.jsp.assignment.urlshortener.entity.ShortURL;
import com.jsp.assignment.urlshortener.entity.User;

@Repository
public class ShortUrlRepository {

	Configuration cfg = new Configuration().configure().addAnnotatedClass(ShortURL.class).addAnnotatedClass(User.class);
	SessionFactory sf = cfg.buildSessionFactory();

	public void saveURL(ShortURL url) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		session.save(url);

		transaction.commit();
		session.close();
	}

	public ShortURL findUrlByShortURLKey(String key) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<ShortURL> cq = cb.createQuery(ShortURL.class);
		Root<ShortURL> root = cq.from(ShortURL.class);
		cq.select(root);
		cq.where(cb.equal(root.get("shortURLKey"), key));
		
		Query<ShortURL> query = session.createQuery(cq);
		ShortURL url = query.getSingleResult();

		transaction.commit();
		session.close();

		return url;
	}

	public List<ShortURL> findAllShortURLByUser(User user) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		Query<ShortURL> query = session.createQuery("FROM ShortURL WHERE user=:user", ShortURL.class);
		query.setParameter("user", user);
		List<ShortURL> urls = query.list();

		transaction.commit();
		session.close();

		return urls;
	}

	public ShortURL findShortUrlByById(int urlId) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		ShortURL url = session.get(ShortURL.class, urlId);

		transaction.commit();
		session.close();

		return url;
	}

	public void updateURL(ShortURL url) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(url);
		transaction.commit();
		session.close();
	}

	public void deleteURL(ShortURL url) {
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		session.delete(url);

		transaction.commit();
		session.close();

	}

}
