package com.globant.discostore.search.services.impl;

import java.io.IOException;

import javax.inject.Inject;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.globant.discostore.search.services.SearchService;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import io.searchbox.client.JestClient;
import io.searchbox.core.Search;
import io.searchbox.core.SearchResult;

import com.globant.discostore.search.services.ElasticSearchClientFactory;

public class ElasticSearchSearchServiceImpl implements SearchService {

    public static final Logger LOGGER = LoggerFactory.getLogger(ElasticSearchSearchServiceImpl.class);

    @Inject
    private ElasticSearchClientFactory clientFactory;

    @Override
    public JSONArray search(String filter) {
    	JSONArray items = new JSONArray();
        try {
	    	JestClient client = clientFactory.getClient();
	    	String query = "{\n"
	                + "    \"query\": {\n"
	                + "        \"filtered\" : {\n"
	                + "            \"query\" : {\n"
	                + "                \"query_string\" : {\n"
	                + "                    \"query\" : \"java\"\n"
	                + "                }\n"
	                + "            }"
	                + "        }\n"
	                + "    }\n"
	                + "}";
	    	
	    	JSONObject queryNode = new JSONObject();
	    	JSONObject boolNode = new JSONObject();
	    	JSONObject matchOne = new JSONObject();
	    	matchOne.put("name", filter);
	    	boolNode.put("should", matchOne);
	    	queryNode.put("query", boolNode);
	    	
	        Search.Builder searchBuilder = new Search.Builder(
	        		queryNode.toString()).addIndex("cars").addType("lamborghini");
			SearchResult result = client.execute(searchBuilder.build());
			JsonObject jsonItems = result.getJsonObject();
			for (JsonElement o : jsonItems.getAsJsonObject("hits").getAsJsonArray("hits")){
				JSONObject item = new JSONObject();
				item.put("name", o.getAsJsonObject().get("name").getAsString());
				item.put("version", o.getAsJsonObject().get("version").getAsString());
				item.put("hps", o.getAsJsonObject().get("hps").getAsString());
			}
		} catch (IOException e) {
			LOGGER.error(e.getMessage(), e);
		} catch (JSONException e) {
			LOGGER.error(e.getMessage(), e);
		}
        return items;
    }

}
