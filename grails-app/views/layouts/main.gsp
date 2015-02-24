<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="app.version" content="${g.meta(name:'app.version')}"/>
    <meta name="app.build" content="${g.meta(name:'app.build')}"/>
    <meta name="description" content="Atlas of Living Australia"/>
    <meta name="author" content="Atlas of Living Australia">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="http://www.ala.org.au/wp-content/themes/ala2011/images/favicon.ico" rel="shortcut icon"  type="image/x-icon"/>

    <title><g:layoutTitle /></title>

    <%-- Do not include JS & CSS files here - add them to your app's "application" module (in "Configuration/ApplicationResources.groovy") --%>
    <r:require modules="bootstrap"/>

    <r:layoutResources/>
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${pageProperty(name:'meta.fluidLayout')?:grailsApplication.config.skin?.fluidLayout}"/>
<g:set var="containerType" value="${fluidLayout ? 'container-fluid' : 'container'}"/>
<!-- Navbar -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="${containerType}">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img alt="brand" class="brand img-responsive" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/supporting-graphic-element-flat.png">
            </a>
            <a class="brand" href="/">
                The Atlas Of Living Australia
            </a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li>
                        <a href="#">Contact us</a>
                    </li>
                    <li>
                        <a href="#">Get involved</a>
                    </li>
                    <li class="dropdown font-xsmall">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            ALA Apps
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Spatial portal</a></li>
                            <li ><a href="#">Occurrence search</a></li>
                            <li ><a href="#">Fish map</a></li>
                            <li ><a href="#">Regions</a></li>
                            <li ><a href="#">Explore your area</a></li>

                            <li class="divider"></li>
                            <li><a href="#">Record a sighting</a></li>
                            <li><a href="#">Collections</a></li>
                            <li><a href="#">DigiVol</a></li>
                            <li><a href="#">Fieldcapture</a></li>
                            <li><a href="#">Soils to satellite</a></li>
                            <li><a href="#">Traits, species lists</a></li>

                            <li class="divider"></li>
                            <li><a href="#">Community portals</a></li>
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Datasets browser</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav pull-right">
                    <li ><a href="#">My profile</a></li>
                    <li ><a href="#">Login</a></li>
                </ul>
                <form class="navbar-form" role="search">
                    <input type="text" class="form-control" placeholder="Search the Atlas">
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div><!-- /.nav-collapse -->
        </div><!-- /.container -->
    </div><!-- /.navbar-inner -->
</div><!-- /.navbar -->

<!-- Container -->
<div class="${containerType}" id="main">
    <g:layoutBody />
</div><!-- End container #main col -->

<div class="${containerType} hidden-desktopZ hide">
    <%-- Borrowed from http://marcusasplund.com/optout/ --%>
    <a class="btn btn-small toggleResponsive"><i class="icon-resize-full"></i> <span>Desktop</span> version</a>
</div>

<!-- Footer -->
<div class="container-fluid ftr-container">
    <footer class="container">
        <div class="row-fluid ftr-primary">
            <div class="span4">
                <p class="lead">
                    The Atlas of Living Australia is a collaborative, national project that aggregates
                    biodiversity data from multiple sources and makes it available and usable online.
                </p>
                <p class="lead sharing">
                Sharing biodiversity knowledge to shape our future.
                </p>
            </div>

            <div class="span2">
                <ul class="link-list">
                    <li class="heading"><a href="#">Citizen Science &rarr;</a></li>
                    <li><a href="#">About CS in the ALA</a></li>
                    <li><a href="#">DigiVol Portal</a></li>
                    <li><a href="#">Record a sighting</a></li>
                    <li><a href="#">Upload media</a></li>
                </ul>
            </div>
            <div class="span2">
                <ul class="link-list">
                    <li class="heading"><a href="#">Atlas Features &rarr;</a></li>
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="#">Sandbox</a></li>
                    <li><a href="#">Digitisation guidance</a></li>
                    <li><a href="#">Atlas Mobile Apps</a></li>
                </ul>
            </div>

            <div class="span2">
                <ul class="link-list">
                    <li class="heading"><a href="#">Atlas Data &rarr;</a></li>
                    <li><a href="#">Sensitive Data</a></li>
                    <li><a href="#">Data integration</a></li>
                    <li><a href="#">Dataset upload</a></li>
                    <li><a href="#">Species list upload</a></li>
                </ul>
            </div>

            <div class="span2">
                <ul class="link-list">
                    <li class="heading"><a href="#">Contact Us &rarr;</a></li>
                    <li><a href="#">Communications</a></li>
                    <li><a href="#">About the Atlas</a></li>
                    <li><a href="#">My Sightings</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Associated Sites</a></li>
                </ul>
            </div>
        </div><!-- End row -->

        <!-- SECONDARY FOOTER -->
        <div class="row-fluid ftr-secondary">
            <div class="span4">
                <div class="row-fluid">
                    <div class="span12">
                        <img class="img-responsive ncris" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/NCRIS_mono.svg"><!-- Logo -->
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <img class="img-responsive aus-govt" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/aus_initiative_stacked.svg"><!-- Logo -->
                    </div>
                </div>
            </div>
            <div class="span4">
                <p>
                    The Atlas of Living Australia is funded by <a href="#">The Commonwealth Scientific and Industrial Research Organisation</a> (CSIRO) and is a node of the <a href="#">Global Biodiversity Information Facility (GBIF)</a>.
                </p>
                <div class="row-fluid">
                    <div class="span6">
                        <img class="img-responsive csiro" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/CSIRO_Solid_RGB.svg"><!-- Logo -->
                    </div>
                    <div class="span6">
                        <img class="img-responsive gbif" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/GBIF_logo_short_form.gif"><!-- Logo -->
                    </div>
                </div>
            </div>
            <div class="span4">
                <p>
                    This site is licensed under a <a href="#">Creative Commons Attribution 3.0 Australia License</a>.
                </p>
                <p><img class="img-responsive" src="${g.resource(dir:'', plugin:'ala-bootstrap2')}/images/creativecommons.png"><!-- Logo --><!-- http://placehold.it/150x50 --></p>
                <p>
                    Provider content may be covered by other <a href="#">Terms of Use</a>.
                </p>
            </div>
        </div><!-- End row -->
        <!-- END SECONDARY FOOTER -->

        <!-- SOCIAL FOOTER -->
        <div class="row-fluid ftr-social">
            <div class="span4">
                <ul class="social inline">
                    <li><a class="soc-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="soc-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="soc-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a class="soc-envelope" href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
            </div>

            <div class="span8 soc-nav">
                <ul class="footer-nav inline">
                    <li ><a href="#">Contact Us</a></li>
                    <li ><a href="#">Get Involved</a></li>
                    <li ><a href="#">Explore the ALA</a></li>
                </ul>
            </div>
        </div><!-- End row -->
    </footer>
</div>

<script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<r:script>
    var pageTracker = _gat._getTracker("UA-4355440-1");
    pageTracker._initData();
    pageTracker._trackPageview();

    // show warning if using IE6
    if ($.browser && $.browser.msie && $.browser.version.slice(0,1) == '6') {
        $('#header').prepend($('<div style="text-align:center;color:red;">WARNING: This page is not compatible with IE6.' +
                ' Many functions will still work but layout and image transparency will be disrupted.</div>'));
    }
</r:script>

<!-- JS resources-->
<r:layoutResources/>

</body>
</html>
