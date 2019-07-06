## -----------------------------------------------------------------------------
## Linux Scripts.
## UpdateSystem app configuration file.
##
## @package ojullien\bash\app\updatesystem
## @license MIT <https://github.com/ojullien/bash-updatesystem/blob/master/LICENSE>
## -----------------------------------------------------------------------------

## -----------------------------------------------------------------------------
## Trace
## -----------------------------------------------------------------------------
UpdateSystem::trace() {
    String::separateLine
    String::notice "App configuration: UpdateSystem"
    String::notice "\tNo configuration"
    return 0
}
