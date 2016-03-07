package fr.upond.syndic.service.helper;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Properties;
import java.util.Set;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

import fr.upond.syndic.repo.model.common.PollingPartOwner;
import fr.upond.syndic.repo.model.common.Question;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class MangerMailHelper {
	
	private static final Log logger = LogFactory.getLog(MangerMailHelper.class);
	private static Properties properties;
		
	public static void sendMail(Set<PollingPartOwner> pollingPartOwner) {
		
		properties = null;
		try {		
			Resource resource = new ClassPathResource("mail.properties");
			properties = PropertiesLoaderUtils.loadProperties(resource);
			
		} catch (IOException e1) {
			
            logger.error(e1);
		}
		
		Session session = Session.getDefaultInstance(properties,  new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(properties.getProperty("syndic.notify.from").toString(),
                		properties.getProperty("syndic.email.pwd").toString());
            }
        });
        
		try {
			
			for (PollingPartOwner instance : pollingPartOwner) {
				
			    StringBuilder message = new StringBuilder();
			    message.append("<html><head>");
			    message.append("</head><body><h1>Nouveau Status Syndic App</h1><br/>");
			    message.append("<h2>Bonjour "+instance.getPartOwner().getFirstName()+" </h2><br/>");
			    message.append("<div class=\"datagrid\" style=\"font: normal 12px/150% Arial, Helvetica, sans-serif; background: #fff; overflow: hidden; border: 1px solid #8C8C8C; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; \"><table style=\"border-collapse: collapse; text-align: left; width: 100%;\">");
			    message.append("<thead><tr style=\"background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #8C8C8C), color-stop(1, #7D7D7D) );background:-moz-linear-gradient( center top, #8C8C8C 5%, #7D7D7D 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#8C8C8C', endColorstr='#7D7D7D');background-color:#8C8C8C; color:#FFFFFF; font-size: 15px; font-weight: bold; border-left: 1px solid #A3A3A3;\"><th>Evenement</th><th>Date</th><th>Questions</th></tr></thead><tbody>");
			    message.append("<tr><td").append(" class=\"alt\"").append("><b>");
			    message.append(instance.getPolling().getAgEvent().getEventName());
			    message.append("</b></td>");
			    message.append("<td><a href=\"");
			    message.append(instance.getPolling().getId());
			    message.append("\">");
			    message.append(instance.getPolling().getAgEvent().getDateEvent());
			    message.append("</a></td>");
			    message.append("<td>");
			    message.append("<span><b><font color=\"").append("green")
				       .append("\">");
			    for (Question quest : instance.getPolling().getQuestions()) {
				    message.append(quest.getQuest());
				    message.append("<br />");
			    }
			    message.append("</font>");
			    message.append("</b></span></td></tr>");
			    message.append("</tbody><tfoot></tfoot></table></div></body></html>");
			    MimeMessage msg = new MimeMessage(session);
			    msg.setFrom(new InternetAddress(properties.getProperty("syndic.notify.from")));
			    logger.debug(" address mail "+instance.getPartOwner().getEmail());
			    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(instance.getPartOwner().getEmail()));
			    msg.setSubject("[Syndic-Notif][" + InetAddress.getLocalHost().getHostName() + "]");
			    msg.setText(message.toString(), "utf-8", "html");
			    Transport.send(msg);	
			}
			
		} catch (Exception e) {
			logger.debug(e);
		}

	}

}
