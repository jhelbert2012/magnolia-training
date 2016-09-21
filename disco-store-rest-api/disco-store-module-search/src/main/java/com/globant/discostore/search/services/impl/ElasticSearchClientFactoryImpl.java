package com.globant.discostore.search.services.impl;


import com.globant.discostore.search.services.ElasticSearchClientFactory;

import io.searchbox.client.JestClient;
import io.searchbox.client.JestClientFactory;
import io.searchbox.client.config.HttpClientConfig;

public class ElasticSearchClientFactoryImpl implements ElasticSearchClientFactory {

	private static final String ELASTICSEARCH_ENDPOINT = "http://127.0.0.1:9200";

	@Override
	public JestClient getClient() {
		JestClientFactory factory = new JestClientFactory();
        factory.setHttpClientConfig(new HttpClientConfig.Builder(ELASTICSEARCH_ENDPOINT)
                .multiThreaded(true)
                .build());
        JestClient client = factory.getObject();
        return client;
	}

}
