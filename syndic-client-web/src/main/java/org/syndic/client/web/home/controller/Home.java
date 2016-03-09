package org.syndic.client.web.home.controller;


import com.dropbox.core.*;
import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Address;
import fr.upond.syndic.repo.model.common.Condo;
import fr.upond.syndic.repo.model.common.Lot;
import fr.upond.syndic.repo.model.common.Provider;
import fr.upond.syndic.security.model.User;
import fr.upond.syndic.service.IManager;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import fr.upond.syndic.repo.model.common.*;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.syndic.client.web.command.CondoCommand;
import org.syndic.client.web.command.MessageCommand;
import org.syndic.client.web.command.ProviderCommand;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

/**
 *
 * @author LYES KHERBICHE
 *
 */

@Controller
public class Home {

	private static final Log logger = LogFactory.getLog(Home.class);

	@Autowired
	private IManager<BaseObject> manager;


	public void setManager(IManager<BaseObject> manager) {
		this.manager = manager;
	}


	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		logger.info("== URI: /welcome ==");
		return "welcomePage";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin() {
		logger.info("== URI: /admin ==");
		return "adminPage";
	}

	@RequestMapping(value = "/sign", method = RequestMethod.GET)
	public String login(ModelMap model,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		logger.info("== URI: /login ==");
		if(error != null) {
			model.addAttribute("error", "Invalid username and password!");
		}
		if(logout != null) {
			model.addAttribute("msg", "You've been logged out successfully.");
		}
		return "loginPage";
	}

	@RequestMapping(value = "/listprovider", method = RequestMethod.GET)
	public String listProvider(ModelMap model) {
		for (Object provider : this.manager.get(new Provider()) ) {
			logger.info("provider (name) "+((Provider)provider).getNameProvider());
		}

		model.addAttribute("listprovider",this.manager.get(new Provider()));
		return "listProviderPage";
	}

	@RequestMapping(value = "/getformaddprovider", method = RequestMethod.GET)
	public String getFormAddProvider(Map<String,Object> model) {
		logger.info("== Get Form Provider ==");
		model.put("providerCommand", new ProviderCommand());
		return "addProviderPage";
	}

	@RequestMapping(value = "/addprovider", method = RequestMethod.POST)
	public String addProvider(@ModelAttribute("providerCommand") ProviderCommand providerCommand) {
		logger.info("==== Insert Provider =====");
		logger.info("******** "+providerCommand.getNameProvider());
		Provider provider = new Provider(providerCommand.getNameProvider(),providerCommand.getDescription(),"");
		this.manager.add(provider);
		return "welcomePage";
	}


	@RequestMapping(value = "/condo/add", method = RequestMethod.GET)
	public String getFormAddCondo(Map<String,Object> model) {
		logger.info("== uri: /getformaddcondo ==");
		model.put("condoCommand", new CondoCommand());
		return "addCondoPage";
	}

	
	@RequestMapping(value = "/condo/add", method = RequestMethod.POST)
	public String addCondo(@ModelAttribute("condoCommand") CondoCommand condoCommand) {
		logger.info("== uri: /addcondo ==");

		Address address = new Address(condoCommand.getNumAddressStart()+", "+condoCommand.getNumAddressEnd(),
				condoCommand.getTypeAddress(), condoCommand.getStreet(),condoCommand.getCity(), condoCommand.getZipcode(),
				condoCommand.getCountry(), condoCommand.getPlaceName());
		Lot lot = new Lot(Integer.parseInt(condoCommand.getCodeLot()), condoCommand.getTypeLot(),
				Integer.parseInt(condoCommand.getFloorLot()),
				Double.parseDouble(condoCommand.getAreaLot()), Double.parseDouble(condoCommand.getPart()));
		Set<Lot> setLot = new HashSet<Lot>(0);
		setLot.add(lot);
		Condo condo = new Condo(condoCommand.getName(), Double.parseDouble(condoCommand.getAreaCondo()), address);
		condo.setLot(setLot);

		this.manager.add(condo);

		return "addCondoPage";
	}

    @RequestMapping(value = "/home/getformupload", method = RequestMethod.GET)
    public String getFormUpload(Map<String,Object> model) {
        logger.info("==== Get Form Upload =====");

        return "uploadPage";
    }

    @RequestMapping(value = "/home/upload", method = RequestMethod.POST)
    public String uploadFile(@RequestParam("file") File file) throws IOException, DbxException {

        final String APP_KEY = "";
        final String APP_SECRET = "";

        logger.info("==== Je suis connecte =====");

        DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

        DbxRequestConfig config = new DbxRequestConfig( "syndic/1.0", Locale.getDefault().toString());
        DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);


        String accessToken = "";

        DbxClient client = new DbxClient(config, accessToken);


        File inputFile = new File("/" + file );
        FileInputStream inputStream = new FileInputStream(inputFile);

        try {
            DbxEntry.File uploadedFile = client.uploadFile("/" + file , DbxWriteMode.add(), inputFile.length(), inputStream);

        } finally {
            inputStream.close();
        }
        return "welcomePage";
    }

    @RequestMapping(value = "/home/getformdownload", method = RequestMethod.GET)
    public String getFormDowndload(Map<String,Object> model) {
        logger.info("==== Get Form Download =====");

        return "downloadPage";
    }

    @RequestMapping(value = "/home/listing", method = RequestMethod.GET)
    public String listingFolders(ModelMap model) throws IOException, DbxException {

        List<String> liste = new ArrayList<>();
        List<Double> dropboxSize = new ArrayList<>();
        final String APP_KEY = "64foz0ixb66kp79";
        final String APP_SECRET = "kcqmxhagcs764jl";

        logger.info("==== Je suis connecte =====");

        DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

        DbxRequestConfig config = new DbxRequestConfig("syndic/1.0", Locale.getDefault().toString());
        DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);



        String accessToken = "T-_y5JLRqH8AAAAAAAAAPUTJyXzKamAx5HFHk55jwREQQ60G_eHPNZ6uEXaXPfgI";

        DbxClient client = new DbxClient(config, accessToken);


       String cursor = null;
        String path = "/";

            DbxDelta<DbxEntry> result = client.getDeltaWithPathPrefix(cursor, path);
            cursor = result.cursor;


            for (DbxDelta.Entry entry : result.entries) {

                if (entry.metadata == null) {


                    liste.add(entry.lcPath);
                } else {


                    liste.add(entry.lcPath);

                }

            }
            //model.put("size", )

        DbxAccountInfo dbxAccountInfo = client.getAccountInfo();
        // in GB :)

        double s= dbxAccountInfo.quota.total / 1024 / 1024 ;
        double s2=dbxAccountInfo.quota.shared / 1024 / 1024 ;
        s2=s2/1000;
        s=s/1000;

        double espaceRestant = s-s2;
        BigDecimal bd = BigDecimal.valueOf(espaceRestant);
        bd = bd.setScale(2, RoundingMode.HALF_UP);

        dropboxSize.add(bd.doubleValue());
        model.put("dropboxSize",dropboxSize);
        model.put("liste",liste);
        return "listingPage";


    }


    @RequestMapping(value = "/home/download", method = RequestMethod.GET)
    public String  downloadFile(String name) throws IOException, DbxException {

        final String APP_KEY = "64foz0ixb66kp79";
        final String APP_SECRET = "kcqmxhagcs764jl";

        logger.info("==== Je suis connecte =====");

        DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

        DbxRequestConfig config = new DbxRequestConfig( "syndic/1.0", Locale.getDefault().toString());
        DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);

        String accessToken = "T-_y5JLRqH8AAAAAAAAAPUTJyXzKamAx5HFHk55jwREQQ60G_eHPNZ6uEXaXPfgI";

        DbxClient client = new DbxClient(config, accessToken);


        FileOutputStream outputStream = new FileOutputStream(name);


        try {
            DbxEntry.File downloadedFile =client.getFile("/" + name, null, outputStream);

        } finally {
            outputStream.close();
        }

        return "downloadPage";
    }

    @RequestMapping(value = "/home/media", method = RequestMethod.GET)
    public String  listingFile(String name) throws IOException, DbxException {

        final String APP_KEY = "64foz0ixb66kp79";
        final String APP_SECRET = "kcqmxhagcs764jl";

        logger.info("==== Je suis connecte =====");

        DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

        DbxRequestConfig config = new DbxRequestConfig( "syndic/1.0", Locale.getDefault().toString());
        DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);

        String accessToken = "T-_y5JLRqH8AAAAAAAAAPUTJyXzKamAx5HFHk55jwREQQ60G_eHPNZ6uEXaXPfgI";

        DbxClient client = new DbxClient(config, accessToken);


        DbxEntry.WithChildren listing = client.getMetadataWithChildren("/");
        System.out.println("Files in the root path:");
        for (DbxEntry child : listing.children) {
            System.out.println("	" + child.name + ": " + child.toString());
        }

        return "downloadPage";
    }

    @RequestMapping(value = "/home/about", method = RequestMethod.GET)
    public String getAbout() {
        logger.info("== URI: /about ==");
        return "aboutPage";
    }

	@RequestMapping(value = "/message/send", method = RequestMethod.GET)
	public String sendMessage(Map<String,Object> model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username

        List<BaseObject> list = this.manager.get(new Message());

        for (Object message : this.manager.get(new Message()) ) {
            if(((Message)message).getUserNameDestinataire() == name ){
                list.add((Message)message);
            }
        }
		logger.info("== uri: /sendMessage ==");
		model.put("messageCommand", new MessageCommand());
		model.put("listmessage", list);
		return "sendMessage";
	}

	@RequestMapping(value = "/message/sendMessageToDest", method = RequestMethod.POST)
	public String sendMessageToDest(@ModelAttribute("messageCommand") MessageCommand messageCommand, Map<String,Object> model) {
        logger.info("==== Insert Message =====");
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username
        Message message = new Message(messageCommand.getUserNameDestinataire().trim(), name,messageCommand.getObject(),messageCommand.getContent(), "non lu");
        this.manager.add(message);

        List<BaseObject> list = this.manager.get(new Message());

        for (Object message1 : this.manager.get(new Message()) ) {
            if(((Message)message1).getUserNameDestinataire() == name ){
                list.add((Message)message1);
            }
        }

        logger.info("== uri: /sendMessage ==");
        model.put("status", "ok");
        model.put("messageCommand", new MessageCommand());
        model.put("listmessage", list);

        return "sendMessage";
    }



}
