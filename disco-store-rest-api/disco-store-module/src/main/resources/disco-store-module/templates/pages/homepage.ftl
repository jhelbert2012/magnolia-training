[#assign title = content.title!"Disco Store"]

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <title>${title}</title>
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
		<!--Featured album block-->
				<div class="featured">
					[@cms.area name="main" /]
					<!--Featured album block-->
				</div>
				<!--/Featured album block-->
				<div class="breadcrumbs line-bottom">
					[@cms.area name="breadcrumb" /]
				</div>
				<!-- content -->
				<section class="content">
				    <section class="list-albums">
					    <header>
					        <h2>Others Albums Sections</h2>
					    </header>
					    <ul>
					        <li class="other-album-grid">
					            <img src="http://placehold.it/500x400/ffffff/000000" alt="Album's name" title="Album's name" />
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
					        </li><li class="other-album-grid">
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
					    <div class="pager">
					        <span class="first"><a href="#"><<</a></span>
					        <span class="prev"><a href="#"><</a></span>
					        <ul>
					            <li class="pagerPage"><a href="#">1</a></li>
					            <li class="pagerPage"><a href="#">2</a></li>
					            <li class="pagerPage"><a href="#">3</a></li>
					        </ul>
					        <span class="next"><a href="#">></a></span>
					        <span class="last"><a href="#">>></a></span>
					    </div>
					</section>
				</section>
				<!-- /content -->
				<section class="bottom">
				    <nav class="secondary-nav">
						[@cms.area name="menu" /]
					</nav>
					[@cms.area name="social" /]
				</section>

				<footer>Copy Right - Disc store</footer>
			</div>
		</div>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.0.min.js"><\/script>')</script>
		<script src="js/plugins.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>