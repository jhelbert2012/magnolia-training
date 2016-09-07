package com.globant.discostore.search.services.impl;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.HttpSolrClient;

import com.globant.discostore.search.services.SolrClientFactory;

public class SolrClientFactoryImpl implements SolrClientFactory {

    private static final String SOLR_CORE_URL = "http://localhost:8983/solr/magnoliatraining";

    @Override
    public SolrClient getClient() {
    	SolrClient solrClient = new HttpSolrClient(SOLR_CORE_URL);
    	return solrClient;
    }

}
