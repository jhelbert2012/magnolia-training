<ul>
	[#if (content.menuList)?has_content]
		[#list cmsfn.children(content.menuList) as menu ]
		<li><a href="${ctx.contextPath}${menu.itemPath!}"><span>${menu.itemName!}</span></a></li>
		[/#list]
	[/#if]
</ul>