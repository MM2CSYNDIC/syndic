package org.syndic.client.web.helper;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import fr.upond.syndic.repo.model.BaseObject;
import fr.upond.syndic.repo.model.common.Condo;

/**
 * 
 * @author LYES KHERBICHE
 *
 */
public class EventHelper {

	public static JSONObject condoToJson(List<BaseObject> listCondo) {
		
		JSONArray tree = new JSONArray();
		
		for (BaseObject bo : listCondo) {
			
			JSONObject condoJson = new JSONObject();
			Condo condo = (Condo) bo;
			
			condoJson.put("id", condo.getId());
			condoJson.put("name", condo.getName());
			condoJson.put("area", condo.getArea());
			
			JSONObject address = new JSONObject();
			address.put("id", condo.getAddress().getId());
			address.put("numAdress", condo.getAddress().getNumAdress());
			address.put("typeAddress", condo.getAddress().getTypeAddress());
			address.put("street", condo.getAddress().getStreet());
			address.put("city", condo.getAddress().getCity());
			address.put("zipCode", condo.getAddress().getZipCode());
			address.put("country", condo.getAddress().getCountry());
			address.put("placeName", condo.getAddress().getPlaceName());
			condoJson.put("address", address);
			
			tree.put(condoJson);
		}
		JSONObject ret = new JSONObject();
		ret.put("trees", tree);
		return ret;
	}

}
