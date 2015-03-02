
def alaBaseUrl = "https://www.ala.org.au"

modules = {
    bootstrap {
        dependsOn 'core', 'font-awesome'
        resource url:alaBaseUrl + '/commonui-bs2/css/bootstrap.min.css', attrs:[media:'all']
        resource url:alaBaseUrl + '/commonui-bs2/css/bootstrap-responsive.min.css', attrs:[media:'all']
        resource url:alaBaseUrl + '/commonui-bs2/css/ala-styles.css', attrs:[media:'all']
        resource url:alaBaseUrl + '/commonui-bs2/js/bootstrap.js'
    }

    core {
        dependsOn 'jquery', 'autocomplete'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'html5.js'], wrapper: { s -> "<!--[if lt IE 9]>$s<![endif]-->" }
        resource url:alaBaseUrl + '/commonui-bs2/js/application.js'
    }

    autocomplete {
        // This is a legacy component that do not work with latest versions of jQuery (1.11+, maybe others)
        dependsOn 'jquery-migration'
        // Important note!!: To use this component along side jQuery UI, you need to download a custom jQuery UI compilation that
        // do not include the autocommplete widget
        resource url:[plugin: 'ala-bootstrap2', dir: 'css',file:'jquery.autocomplete.css'], attrs:[media:'all']
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'jquery.autocomplete.js']
    }

    'jquery-migration' {
        // Needed to support legacy js components that do not work with latest versions of jQuery
        dependsOn 'jquery'
        resource url:[plugin: 'ala-bootstrap2', dir: 'js',file:'jquery-migrate-1.2.1.min.js']
    }

    'font-awesome' {
        resource url:[plugin: 'ala-bootstrap2', dir: 'css', file: 'font-awesome-4.3.0.css'], attrs:[media:'all']
    }

}