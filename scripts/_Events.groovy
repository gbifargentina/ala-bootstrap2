eventAssetPrecompileStart = { assetConfig ->
    if(!config.grails.assets.plugin."ala-bootstrap2".excludes || config.grails.assets.plugin."ala-bootstrap2".excludes.size() == 0) {
        config.grails.assets.plugin."ala-bootstrap2".excludes = ["**/*.less"]
    }
}