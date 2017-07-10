<plugin:isNotAvailable name="resources">
    <asset:stylesheet src="${pageProperty(name:'meta.head-css') ?: "${assetPrefix}.css"}" media="all" />
    <link href="${grailsApplication.config.headerAndFooter.baseURL}/css/bootstrap.min.css" rel="stylesheet" media="all" />
    <link href="${grailsApplication.config.headerAndFooter.baseURL}/css/bootstrap-responsive.min.css" rel="stylesheet" media="all" />
    <g:if test="${assetLinks}">
        <g:each var="link" in="${assetLinks}">
            <link href="${link.href}" rel="${link.rel ?: 'stylesheet' }" media="${link.media}" />
        </g:each>
    </g:if>
    <!--[if lt IE 9]>
    <asset:javascript src="html5.js" />
    <![endif]-->
    <asset:javascript src="${pageProperty(name:'meta.head-js') ?: "${assetPrefix}-head.js"}" />
</plugin:isNotAvailable>
<plugin:isAvailable name="resources">
    <r:require modules="${requireModule}"/>
    <r:layoutResources/>
</plugin:isAvailable>