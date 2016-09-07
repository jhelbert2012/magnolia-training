package com.globant.discostore.search.ui;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.globant.discostore.search.services.SearchService;
import com.vaadin.annotations.JavaScript;
import com.vaadin.annotations.StyleSheet;
import com.vaadin.ui.AbstractJavaScriptComponent;
import com.vaadin.ui.JavaScriptFunction;

import elemental.json.JsonArray;
import info.magnolia.objectfactory.Components;

@JavaScript({ 
    "disco-store-module-search/view/js/search.js", 
    "disco-store-module-search/view/js/search_connector.js",
    "disco-store-module-search/view/js/jquery.js",
    "disco-store-module-search/view/js/bootstrap.min.js" 
})
@StyleSheet({
    "disco-store-module-search/view/css/bootstrap.min.css" 
})
public class SearchJs extends AbstractJavaScriptComponent {

    private static final long serialVersionUID = 1L;
    public static final Logger LOGGER = LoggerFactory.getLogger(SearchJs.class);
    
    private SearchService searchService;

    public SearchJs() {
        init();
        // Callback from the canvas component
        addFunction("search", new JavaScriptFunction() {
            private static final long serialVersionUID = 1L;

            @Override
            public void call(JsonArray arguments) {
                try {
                    searchService = Components.getComponent(SearchService.class);
                    JSONArray result = searchService.search(arguments.getString(0));
                    getState().searchResults = result.toString();
                    LOGGER.debug(arguments.getString(1) + " => " + arguments.getString(0));
                } catch (Exception ex) {
                    LOGGER.error(ex.getMessage(), ex);
                }
            }

        });
    }

    @Override
    public SearchState getState() {
        return (SearchState) super.getState();
    }

    /**
     * load the available data into the canvas
     */
    public void init() {
        try {

        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

}
