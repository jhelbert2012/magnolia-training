<div class="logo" >
[#if content.logo?has_content]
	[#assign logoUrl = damfn.getAsset("jcr", content.logo)!]
    [#if logoUrl??]
        <img src="${logoUrl.link}" class="center" title="Disco Store" alt="Disco Store"/>
    [#else]
    	<div>ERROR SELECTING LOGO. PLEASE CHECK IF THE IMAGE EXISTS IN DAM</div>
    [/#if]
[#else]
	<img src="${ctx.contextPath}/.resources/disco-store-module/webresources/img/logo.png" 
    	 class="center" title="Disco Store" alt="Disco Store">
[/#if]
</div>