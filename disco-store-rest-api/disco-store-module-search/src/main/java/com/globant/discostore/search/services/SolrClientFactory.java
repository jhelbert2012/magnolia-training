package com.globant.discostore.search.services;

import org.apache.solr.client.solrj.SolrClient;

public interface SolrClientFactory {
    
    public SolrClient getClient();

}
