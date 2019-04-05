package com.tadigital.ecommerce.customer.service;

import java.util.ArrayList;

import java.util.Properties;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Part;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMultipart;

import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao customerDao = new CustomerDao();

	// CALLING DAO FUNCTION FOR LOGIN AUTHENTICATION
	public boolean loginCustomer(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndPassword(customer);
		return status;
	}

	// CALLING DAO FUNCTION FOR COOKIE LOGIN STAY SIGNED IN FUNCTION
	public boolean loginCookie(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndLogintime(customer);

		return status;
	}

	// CALLING DAO FUNCTION FOR STAY SIGN IN FUNCTIONALITY
	public boolean CreateCookie(Customer customer) {
		boolean status = customerDao.updatelastlogin(customer);
		return status;
	}

	// CALLING DAO FUNCTION FOR CUSTOMER REGISTRATION
	public boolean registerCustomer(Customer customer) {
		boolean status = customerDao.insertCustomer(customer);
		return status;
	}

	// CALLING DAO FUNCTION FOR ACCOUNT UPDATE
	public boolean UpdateProfile(Customer customer) {
		boolean status = customerDao.updateCustomer(customer);
		return status;
	}

	// CALLING DAO FUNCTION FOR CHANGE PASSWORD
	public boolean ChangePassword(Customer customer, String oldpass) {
		boolean status = customerDao.updatePassword(customer, oldpass);
		return status;
	}

	// FUNCTION FOR SENDING MAIL IN CASE OF CHANGE PASSWORD
	public String sendSecurityMail(String name, String email) {
		String set = "NOT SENT";

		// MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("training.project.sanket@gmail.com", "#Iliket0c0de");
			}
		});

		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("training.project.sanket@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("SECURITY ALERT FOR YOUR PROFILE");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='white'>Dear <i><font color='blue'>" + name + "</font></i>,<br/><br/>"
					+ "<br/><h2><font color='red'>Your Password has been changed recently.</font></h2>"
					+ "<br/><br/><br/><font color='green'>If you did not do this activity please contact our customer care immediately.</font>"
					+ "<br/><br/><br/><font color='red'>Happy Ecommercing!!!<br/>TA Digital<br/><br/></font></body>";

			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);
			mimeMessage.setContent(mp);

			// SEND MAIL
			Transport.send(mimeMessage);

			set = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return set;
	}

	// CALLING WELCOME MAIL AFTER REGISTRATION
	public String sendWelcomeMail(String name, String email) {
		String set = "NOT SENT";

		// MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("training.project.sanket@gmail.com", "#Iliket0c0de");
			}
		});
		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("training.project.sanket@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("Welcome to the world of TA Digital!");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='white'>Dear <i><font color='blue'>" + name + "</font></i>,<br/><br/>"
					+ "<img src='cid:image1'><br/><h2><font color='red'>Welcome to the GANG!!</font></h2>"
					+ "<br/><font color='cyan'>We are to glad to you have you on-board</font>"
					+ "<br/><br/><br/><font color='green'>Keep Updated by visiting the webpage regularly for new offers and discounts</font>"
					+ "<br/><br/><br/><font color='red'>Happy Ecommercing!!!<br/>TA Digital<br/><br/></font><img src='cid:image'></body>";
			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);
			mbp1 = new MimeBodyPart();
			DataSource fds = new FileDataSource(
					"D:/Trainee Engineers March 2019/workspace/TrainingProject_Sanket/WebContent/images/thanks.jpg");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image>");
			mp.addBodyPart(mbp1);
			mbp1 = new MimeBodyPart();
			fds = new FileDataSource(
					"D:/Trainee Engineers March 2019/workspace/TrainingProject_Sanket/WebContent/images/welcome.jpg");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader("Content-ID", "<image1>");
			mp.addBodyPart(mbp1);
			mimeMessage.setContent(mp);

			// SEND MAIL
			Transport.send(mimeMessage);
			set = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return set;
	}

	// FUNCTION FOR SENDING BUG REPORT
	public String sendReportMessage(String report) {
		String set = "NOT SENT";

		// MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("training.project.sanket@gmail.com", "#Iliket0c0de");
			}
		});

		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("training.project.sanket@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.CC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.CC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.BCC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setSubject("Bug Report");

			String msg = "Dear " + "Find the bug report below" + "\n\n" + report + "\n\nThanks & Regards"
					+ "\nTA Digital";
			mimeMessage.setText(msg);

			// SEND MAIL
			Transport.send(mimeMessage);
			set = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return set;
	}

	// FUNCTION FOR SENDING BUG REPORT
	public String SendContactMessage(String data[]) {
		String set = "NOT SENT";

		// MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("training.project.sanket@gmail.com", "#Iliket0c0de");
			}
		});

		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("training.project.sanket@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.CC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.CC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.BCC, InternetAddress.parse("sanketsinha1811@gmail.com"));
			mimeMessage.setSubject(data[3]);

			String msg = "Dear TA Digital\n\n " + data[4] + "\n\nFrom"
					+ "\n"+ data[0] + " " + data[1]+"\n"+"Email: "+data[2];
			mimeMessage.setText(msg);

			// SEND MAIL
			Transport.send(mimeMessage);
			set = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return set;
	}
}
