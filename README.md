# ala-bootstrap2 [![Travis CI Build](https://travis-ci.org/AtlasOfLivingAustralia/ala-bootstrap2.svg?branch=master)](https://travis-ci.org/AtlasOfLivingAustralia/ala-bootstrap2)

## Usage
```
runtime ":ala-bootstrap2:2.7.0"
// Then ensure at least one of resources or the asset pipeline plugin is included
// compile ":resources:1.2.14"
// compile ":asset-pipeline:2.14.1"
```

## Description
This is a Grails Plugin to provide the basic set of web resources to correctly apply the **new 2015** ala web theme based on [bootstrap 2.3.2](http://bootstrapdocs.com/v2.3.2/docs/)

It provides the same layout as the latest available version of ala-web-theme but with the following differences:

- **Deferred Javascript loading**: All javascript loading (excluding jquery) is now deferred to the bottom of the page as the default best practice.
- **Newer JQuery library versions support **: We are not limited by just using version 1.7.x anymore. **Version 1.11.1** is provided by default, but you can use other version in your host app if you need to.
- The [jquery-migrate library](https://github.com/jquery/jquery-migrate/) is now included by default to support legacy components like the autocomplete widget that appears in the search section of the main template.
- All Single-Sign-On relevant code has been removed. This code is now hosted in the new [ala-auth plugin](https://github.com/AtlasOfLivingAustralia/ala-auth-plugin).

**NOTE:** this plugin supports both the resources and asset-pipeline plugins.  If the resources plugin is present as a
dependency then the `main` and `generic` layouts will use the resources plugin by default.  This means that to use the 
asset-pipeline to include the plugin's bundles you must ensure that the resources plugin is not included as a transitive
dependency by any other plugins.  Use `./grailsw dependency-report` to show the full dependency graph if you're unsure
where the resources plugin is coming from.

## Upgrading from ala-web-theme

If you want upgrade from ala-web-theme you will have to take into consideration the following points:

- Remove all references to resources whose disposition is within the page header. Eg:
```
disposition: 'head'
```
- All your inline javascript that is not within a resources plugin tag ```<r:script>...</r:script>``` will probably break.
- If you want to use **JQuery UI** library, you will have to compile a custom distribution that excludes the **autocomplete** widget.
- You will probably need to explicitly declare the dependency with the new [ala-auth plugin](https://github.com/AtlasOfLivingAustralia/ala-auth-plugin).

## Changelog
- **Version 2.6.0-SNAPSHOT** (10/07/2017)
  - Add initial support for Asset Pipeline
  - Resources plugin is no longer exported as a dependency
- **Version 2.2** (06/03/2015)
  - CSS fixes, added controller method to clear cache, fix for pagination in mobile display
- **Version 2.1** (02/03/2015)
  - UI/CSS fixes, HTTPS support for external resources, Font-Awesome added back
- **Version 2.0** (26/02/2015)
  - First version for new 2015 design skin.
- **Version 1.4** (24/02/2015)
  - This version, unlike 1.3, truly excludes the servlet-api dependency from being resolve as a dependency in the host app
- **Version 1.3** (18/02/2015)
  - Added "servlet-api" dependency exclusion that was being introduced by the ala-cas-client library
- **Version 1.2** (12/02/2015)
  - Explicitly declares the plugin name for each declaration in the Resources configuration file. Apparently this solves issues with the final WAR packaging in some cases.
- **Version 1.1** (11/02/2015)
  - Removed harmless but unncesary dependency ```compile 'com.yahoo.platform.yui:yuicompressor:2.4.8'```. This dependency was required by the [YUI Minify Resources ](http://grails.org/plugin/yui-minify-resources) which was removed from this plugin for the final 1.0 release.
- **Version 1.0** (06/02/2015):
  - Initial release.
