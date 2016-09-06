package com.globant.discostore.search.services.impl;

import javax.inject.Inject;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.globant.discostore.search.services.SearchService;
import com.globant.discostore.search.services.SolrClientFactory;

public class SearchServiceImpl implements SearchService {

    public static final Logger LOGGER = LoggerFactory.getLogger(SearchServiceImpl.class);

    @Inject
    private SolrClientFactory solrClientFactory;

    @Override
    public JSONArray search(String filter) {
        JSONArray resultItems = new JSONArray();
        SolrClient solrClient = solrClientFactory.getClient();
        SolrQuery solrQuery = new SolrQuery();
        StringBuilder stringQuery = new StringBuilder();
        stringQuery.append("title_s:").append("*").append(filter).append("* or path_s:").append("*").append(filter)
                .append("*").append("* or id:").append("*").append(filter).append("*");
        solrQuery.setQuery(stringQuery.toString());
        QueryResponse solrResponse;
        try {
            solrResponse = solrClient.query(solrQuery);
            SolrDocumentList documents = solrResponse.getResults();
            for (SolrDocument d : documents) {
                JSONObject item = new JSONObject();
                for (String k : d.getFieldNames()) {
                    item.put(k, d.get(k));
                }
                resultItems.put(item);
            }
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
        return resultItems;
    }

}
