<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="app.version" content="${g.meta(name:'app.version')}"/>
    <meta name="app.build" content="${g.meta(name:'app.build')}"/>
    <meta name="description" content="Atlas of Living Australia"/>
    <meta name="author" content="Atlas of Living Australia">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${grailsApplication.config.skin?.favicon?:'http://www.ala.org.au/wp-content/themes/ala2011/images/favicon.ico'}" rel="shortcut icon"  type="image/x-icon"/>

    <title><g:layoutTitle /></title>

    <%-- Do not include JS & CSS files here - add them to your app's "application" module (in "Configuration/ApplicationResources.groovy") --%>
    <r:require modules="bootstrap, ala"/>

    <r:layoutResources/>
    <g:layoutHead />
</head>
<body class="${pageProperty(name:'body.class')}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">
<g:set var="fluidLayout" value="${pageProperty(name:'meta.fluidLayout')?:grailsApplication.config.skin?.fluidLayout}"/>
<g:set var="containerType" value="${fluidLayout ? 'container-fluid' : 'container'}"/>

<!-- Header -->
<hf:banner logoutUrl="${g.createLink(controller:"logout", action:"logout", absolute: true)}" />
<!-- End header -->
<!-- Breadcrumb -->
<header>
    <div class="panel-pane pane-imagen-destacada">
        <div class="pane-content">
            <section class="jumbotron" style="background-image: url('${grailsApplication.config.breadcrumb.image}');">
                <div class="jumbotron_bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ol class="breadcrumb pull-left">
                                    <g:each in="${grails.converters.JSON.parse(grailsApplication.config.breadcrumb.path)}" var="path">
                                        <li><a href="${path.url}">${path.display}</a></li>
                                    </g:each>
                                    <li class="active"><span>${grailsApplication.config.breadcrumb.activoDisplay}</span></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="jumbotron_body">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-md-8 col-md-offset-2 text-center">
                                <h1>${grailsApplication.config.title}</h1>
                                <p>${grailsApplication.config.description}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</header>
<!-- End Breadcrumb -->
<!-- Container -->
<div class="${containerType}" id="main">
    <plugin:isAvailable name="alaAdminPlugin">
        <ala:systemMessage/>
    </plugin:isAvailable>
    <g:layoutBody />
</div><!-- End container #main  -->

<!-- Footer -->
<hf:footer/>
<!-- End footer -->

<!-- JS resources-->
<r:layoutResources/>

</body>
</html>
