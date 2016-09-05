[#assign pageTitle = content.title!"Album page"]
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>${pageTitle}</title>
        <meta name="description" content="Disco store designed and developed for training purposes">
        <meta name="viewport" content="width=device-width">
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/disco-store-module/webresources/css/normalize.css">
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/disco-store-module/webresources/css/styles.css">
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/disco-store-module/webresources/css/main.css">
        <script src="${ctx.contextPath}/.resources/disco-store-module/webresources/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="${ctx.contextPath}/.resources/disco-store-module/webresources/js/main.js"></script>
[@cms.page /]
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        <div class="main-wrapper center">
            <div class="inner-wrapper">
                <header class="main-header">
                    [@cms.area name="logo" /]
                    <nav class="main-nav">
                        [@cms.area name="menu" /]
                    </nav>
                </header>
                <div class="breadcrumbs">
                    [@cms.area name="breadcrumb" /]
                </div>
                <!-- content -->
                <section class="content">
                    <section class="disc-internal gray-block">
                    	<header>
                        	<h1>ALBUM</h1>
                        </header>
                        <article>
	                        [#assign imgItemKey = content.imagePath!]
							[#if imgItemKey??]
							    [#assign imgRef = damfn.getAssetLink(imgItemKey)!]
							    [#if imgRef??]
							        <img src="${imgRef!}" alt="${content.albumTitle!}" title="${content.albumTitle!}" class="inline-block" />
							    [/#if]
							[/#if]
                            <div class="album-data">
                                <h2>${content.albumTitle!}</h2>
                                <h3>${content.artistName!}</h3>
                                <div class="featured-description">
                                    <p>
                                        ${cmsfn.decode(content).albumDescription!""}
                                    </p>
                                </div>
                              <a href="#" class="button">Buy the album</a>
                            </div>
                        </article>
                        <aside class="inline-block">
                            <h4>Playlist</h4>
                            <ul>
                             [#list content.playlist as songName ]
							 		<li>${songName!}</li>
							 [/#list]
                            </ul>
                        </aside>
                    </section>

                    <section class="list-albums internal">
                        <header>
                            <h2>More from the artist</h2>
                        </header>
                        <ul>
                            <li class="other-album-grid">
                                <img src="http://placehold.it/290x220/ffffff/000000" alt="Album's name" title="Album's name" />
                                <div class="other-album-name">The Uplift Mofo Party Plan</div>
                                <div class="other-album-artist">Red Hot Chilli Peppers</div>
                            </li><li class="other-album-grid">
                                <img src="http://placehold.it/290x220/ffffff/000000" alt="Album's name" title="Album's name" />
                                <div class="other-album-name">The Uplift Mofo Party Plan</div>
                                <div class="other-album-artist">Red Hot Chilli Peppers</div>
                            </li><li class="other-album-grid">
                                <img src="http://placehold.it/290x220/ffffff/000000" alt="Album's name" title="Album's name" />
                                <div class="other-album-name">The Uplift Mofo Party Plan</div>
                                <div class="other-album-artist">Red Hot Chilli Peppers</div>
                            </li>
                        </ul>
                    </section>
                </section>
                <!-- /content -->
                <section class="bottom">
                    <nav class="secondary-nav">
                        [@cms.area name="menu" /]
                    </nav>
                    [@cms.area name="social" /]
                </section>
                <footer></footer>
            </div>
        </div>
        <script>window.jQuery || document.write('<script src="${ctx.contextPath}/.resources/disco-store-module/webresources/js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
        <script src="${ctx.contextPath}/.resources/disco-store-module/webresources/js/plugins.js"></script>
        <script src="${ctx.contextPath}/.resources/disco-store-module/webresources/js/main.js"></script>
    </body>
</html>