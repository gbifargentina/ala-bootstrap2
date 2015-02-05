# ala-bootstrap2

## Usage
```
runtime ":ala-bootstrap2:1.0"
```

## Description
This is a Grails Plugin to provide the basic set of web resources to correctly apply the current ala web theme based on [bootstrap 2.3.2](http://bootstrapdocs.com/v2.3.2/docs/)

It provides the same layout as the latest available version of ala-web-theme but with the following differences:

- All javascript loading (including jquery) is now deferred to the bottom of the page as the default best practice.
- The jQuery dependency provided is now 1.11.1 enabling you to use more modern libraries. You can use other version in your host app if you need to.
- The jquery-migration library is now included by default to support legacy components like the autocomplete widget that appears in the search section of the main template.
- All Single-Sign-On relevant code has been removed. This code is now hosted in the ala-auth plugin.

That means that if you want upgrade from ala-web-theme you will have to take into consideration the following checks:
- Remove all references to resources whose disposition is within the page header. Eg:
```
disposition: 'head'
```
- All your inline javascript that is not within a resources plugin tag ```<r:script>...</r:script>``` will probably break.
- If you want to use jQuery UI library, you will have to compile a custom distribution that exclused the **autocomplete** widget.
