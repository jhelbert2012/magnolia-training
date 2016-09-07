package com.globant.discostore.search.index;

import javax.inject.Inject;
import javax.jcr.Node;
import javax.jcr.NodeIterator;
import javax.jcr.Session;

import org.apache.log4j.Logger;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.common.SolrInputDocument;

import com.globant.discostore.search.services.SolrClientFactory;

import info.magnolia.commands.impl.BaseRepositoryCommand;
import info.magnolia.context.Context;
import info.magnolia.context.MgnlContext;

public class BasicSiteIndexCommand extends BaseRepositoryCommand {
    
    @Inject
    private SolrClientFactory solrClientService;
    
    private static final Logger LOGGER = Logger.getLogger(BasicSiteIndexCommand.class);
 
    public boolean execute(Context context) {
        boolean success = true;
        LOGGER.info("Executing the basic site index job...");
        try {
            // some cool task
            Session session = MgnlContext.getJCRSession("website");
            SolrClient solrClient = solrClientService.getClient();
            NodeIterator children = session.getNode("/").getNodes();
            while (children.hasNext()){
                SolrInputDocument document = new SolrInputDocument();
                Node node = (Node)children.next();
                LOGGER.info("processing node " +  node.getPath());
                document.addField("id", node.getPath());
                document.addField("path_s", node.getPath());
                document.addField("title_s", node.hasProperty("title") ? node.getProperty("title").getString() : "null");
                solrClient.add(document);
            }
            solrClient.commit();
            solrClient.close();
            session.logout();
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
            success = false;
        }
        LOGGER.info("done!");
        return success;
    }

}