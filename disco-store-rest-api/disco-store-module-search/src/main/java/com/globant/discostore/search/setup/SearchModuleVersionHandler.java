package com.globant.discostore.search.setup;

import java.util.ArrayList;
import java.util.List;

import javax.jcr.ImportUUIDBehavior;

import com.globant.discostore.search.setup.tasks.UpdateModuleBootstrapTask;

import info.magnolia.module.DefaultModuleVersionHandler;
import info.magnolia.module.InstallContext;
import info.magnolia.module.delta.BootstrapSingleModuleResource;
import info.magnolia.module.delta.DeltaBuilder;
import info.magnolia.module.delta.RemoveNodeTask;
import info.magnolia.module.delta.Task;
import info.magnolia.module.model.ModuleDefinition;
import info.magnolia.module.model.Version;

/**
 * This class is optional and lets you manage the versions of your module,
 * by registering "deltas" to maintain the module's configuration, or other type of content.
 * If you don't need this, simply remove the reference to this class in the module descriptor xml.
 *
 * @see info.magnolia.module.DefaultModuleVersionHandler
 * @see info.magnolia.module.ModuleVersionHandler
 * @see info.magnolia.module.delta.Task
 */
public class SearchModuleVersionHandler extends DefaultModuleVersionHandler {

    private static final String MODULE_NAME = "disco-store-module-search";

    public SearchModuleVersionHandler() {
        super();
        register(DeltaBuilder.update("1.0.0-SNAPSHOT", "")
        );
    }
    
    @Override
    protected List<Task> getStartupTasks(InstallContext ctx) {
        ModuleDefinition module = ctx.getCurrentModuleDefinition();

        List<Task> startupTasks = new ArrayList<>(0);
        startupTasks.addAll(super.getStartupTasks(ctx));
        
        startupTasks.add(new BootstrapSingleModuleResource(
                "config.modules.disco-store-module-search.commands.xml",
                ImportUUIDBehavior.IMPORT_UUID_COLLISION_REMOVE_EXISTING));
        startupTasks.add(new BootstrapSingleModuleResource(
                "config.modules.scheduler.config.jobs.mgnltrnng.xml",
                ImportUUIDBehavior.IMPORT_UUID_COLLISION_REMOVE_EXISTING));
        startupTasks.add(new BootstrapSingleModuleResource(
                "config.modules.rest-services.rest-endpoints.search.xml",
                ImportUUIDBehavior.IMPORT_UUID_COLLISION_REMOVE_EXISTING));
        startupTasks.add(new BootstrapSingleModuleResource(
                "config.modules.rest-tools.config.xml",
                ImportUUIDBehavior.IMPORT_UUID_COLLISION_REMOVE_EXISTING));

        if ("SNAPSHOT".equals(module.getVersion().getClassifier())) {
            // force updates for snapshots
//            startupTasks.add(new BootstrapSingleModuleResource(
//                    "/mgnl-bootstrap/disco-store-module-search/config.modules.disco-store-module-search.commands.xml",
//                    ImportUUIDBehavior.IMPORT_UUID_COLLISION_REMOVE_EXISTING));
        }

        return startupTasks;
    }
    
    @Override
    protected List<Task> getExtraInstallTasks(InstallContext installContext){
        final List<Task> tasks = new ArrayList<>();
        
        return tasks;
    }
    
}