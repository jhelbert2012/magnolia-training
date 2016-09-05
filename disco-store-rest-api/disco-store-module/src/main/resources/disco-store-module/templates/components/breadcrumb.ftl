<ul class="user-nav">
[#list cmsfn.ancestors(content, "mgnl:page") as ancestor ]
[#if ancestor_has_next]
	<li><a href="${cmsfn.link(ancestor)!}"><span>${ancestor.title!}</span></a></li>
[#else]
	<li class="last">
        <i class="yellow-arrow-bk"></i><a href="#"><span>${ancestor.title!}</span></a><i class="yellow-arrow-fw"></i>
    </li>
[/#if]
[/#list]
</ul>