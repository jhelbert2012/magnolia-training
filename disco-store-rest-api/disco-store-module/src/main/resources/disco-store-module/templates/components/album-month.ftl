<section class="featured-album gray-block">
    <header>
        <h1>The album of the month</h1>
    </header> 
    [#assign albumPath = content.albumPath!]
    [#if albumPath?has_content]
		[#assign albumNode = cmsfn.contentByPath(albumPath)]
	    <article>
	    [#if albumNode??]
	    	[#assign imgItemKey = albumNode.imagePath!]
			[#if imgItemKey??]
			    [#assign imgRef = damfn.getAssetLink(imgItemKey)!]
			    [#if imgRef??]
			        <img src="${imgRef!}" alt="${content.albumTitle!}" title="${content.albumTitle!}" class="inline-block" height="220" width="290"/>
			    [/#if]
			[/#if]
	        <div class="album-data">
	            <h2>${albumNode.albumTitle!}</h2>
	            <h3>${albumNode.artistName!}</h3>
	            <div class="featured-description">
	                <p>${cmsfn.decode(albumNode).artistName!}</p>
	            </div>
	            <a href="#" class="button">Button</a>
	        </div>
	        
	    </article>
	    <aside>
	        <h4>Playlist</h4>
	        <ul>
	         [#list albumNode.playlist as songName ]
			 		<li>${songName!}</li>
			 [/#list]
	        </ul>
	    </aside>
	    [/#if] 
	[/#if]   
</section>
