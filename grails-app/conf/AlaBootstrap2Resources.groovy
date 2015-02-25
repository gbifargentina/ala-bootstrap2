modules = {
    bootstrap {
        dependsOn 'core'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'bootstrap.js']
        resource url:[plugin: 'ala-bootstrap2', dir: 'css',file:'bootstrap.css'], attrs:[media:'screen, projection, print']
        resource url:[plugin: 'ala-bootstrap2', dir: 'css',file:'bootstrap-responsive.css'], attrs:[media:'screen, projection, print']
        resource url:[plugin: 'ala-bootstrap2', dir:'css',file:'ala-styles.css']
    }

    core {
        dependsOn 'jquery', 'autocomplete'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'html5.js'], wrapper: { s -> "<!--[if lt IE 9]>$s<![endif]-->" }
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'application.js']
    }

    autocomplete {
        // This is a legacy component that do not work with latest versions of jQuery (1.11+, maybe others)
        dependsOn 'jquery-migration'
        // Important note!!: To use this component along side jQuery UI, you need to download a custom jQuery UI compilation that
        // do not include the autocommplete widget
        resource url:[plugin: 'ala-bootstrap2', dir: 'css',file:'jquery.autocomplete.css']
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'jquery.autocomplete.js']
    }

    'jquery-migration' {
        // Needed to support legacy js components that do not work with latest versions of jQuery
        dependsOn 'jquery'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'jquery-migrate-1.2.1.min.js']
    }

}