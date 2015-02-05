# ala-bootstrap2 [![Travis CI Build](https://travis-ci.org/AtlasOfLivingAustralia/ala-bootstrap2.svg?branch=master)](https://travis-ci.org/AtlasOfLivingAustralia/ala-bootstrap2)

## Usage
```
runtime ":ala-bootstrap2:1.0"
```

## Description
This is a Grails Plugin to provide the basic set of web resources to correctly apply the current ala web theme based on [bootstrap 2.3.2](http://bootstrapdocs.com/v2.3.2/docs/)

It provides the same layout as the latest available version of ala-web-theme but with the following differences:

- **Deferred Javascript loading**: All javascript loading (including jquery) is now deferred to the bottom of the page as the default best practice.
- **Newer JQuery library versions support **: We are not limited by just using version 1.7.x anymore. **Version 1.11.1** is provided by default, but you can use other version in your host app if you need to.
- The [jquery-migrate library](https://github.com/jquery/jquery-migrate/) is now included by default to support legacy components like the autocomplete widget that appears in the search section of the main template.
- All Single-Sign-On relevant code has been removed. This code is now hosted in the new ala-auth plugin.

## Upgrading from ala-web-theme

If you want upgrade from ala-web-theme you will have to take into consideration the following points:

- Remove all references to resources whose disposition is within the page header. Eg:
```
disposition: 'head'
```
- All your inline javascript that is not within a resources plugin tag ```<r:script>...</r:script>``` will probably break.
- If you want to use **JQuery UI** library, you will have to compile a custom distribution that excludes the **autocomplete** widget.
- You will probably need to explicitly declare the dependency with the new ala-auth plugin.

## Included plugin dependencies
This plugin relies heavily on the [resources plugin](http://grails.org/plugin/resources):
```
runtime ":jquery:1.11.1"
runtime ':resources:1.2.14'
if (Environment.current == Environment.PRODUCTION) {
    runtime ":zipped-resources:1.0.1"
    runtime ":cached-resources:1.1"
    compile ":cache-headers:1.1.7"
    runtime ":yui-minify-resources:0.1.5"
}
```

### Important!!
If you are using **Grails 2.4.x** make sure you disable the asset-pipeline plugin.

## Changelog

- **Version 1.0** (06/02/2015):
  - Initial release.
