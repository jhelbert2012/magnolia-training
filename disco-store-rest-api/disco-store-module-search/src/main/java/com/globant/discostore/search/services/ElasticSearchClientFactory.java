package com.globant.discostore.search.services;

import io.searchbox.client.JestClient;

public interface ElasticSearchClientFactory {
    
    public JestClient getClient();

}
