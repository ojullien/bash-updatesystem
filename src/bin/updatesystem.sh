#!/bin/bash
## -----------------------------------------------------------------------------
## Linux Scripts.
## Update system tool.
##
## @package ojullien\bash\bin\updatesystem
## @license MIT <https://github.com/ojullien/bash-updatesystem/blob/master/LICENSE>
## -----------------------------------------------------------------------------
#set -o errexit
set -o nounset
set -o pipefail

## -----------------------------------------------------------------------------
## Shell scripts directory, eg: /root/work/Shell/src/bin
## -----------------------------------------------------------------------------
readonly m_DIR_REALPATH="$(realpath "$(dirname "$0")")"

## -----------------------------------------------------------------------------
## Load constants
## -----------------------------------------------------------------------------
# shellcheck source=/dev/null
. "${m_DIR_REALPATH}/../sys/constant.sh"

## -----------------------------------------------------------------------------
## Includes sources & configuration
## -----------------------------------------------------------------------------
# shellcheck source=/dev/null
. "${m_DIR_SYS}/runasroot.sh"
# shellcheck source=/dev/null
. "${m_DIR_SYS}/string.sh"
# shellcheck source=/dev/null
. "${m_DIR_SYS}/filesystem.sh"
# shellcheck source=/dev/null
. "${m_DIR_SYS}/option.sh"
# shellcheck source=/dev/null
. "${m_DIR_SYS}/config.sh"
# shellcheck source=/dev/null
. "${m_DIR_SYS}/package.sh"
Config::load "updatesystem"
# shellcheck source=/dev/null
. "${m_DIR_APP}/updatesystem/app.sh"

## -----------------------------------------------------------------------------
## Help
## -----------------------------------------------------------------------------
((m_OPTION_SHOWHELP)) && Option::showHelp && exit 0

## -----------------------------------------------------------------------------
## Trace
## -----------------------------------------------------------------------------
Constant::trace
UpdateSystem::trace

## -----------------------------------------------------------------------------
## Start
## -----------------------------------------------------------------------------
String::separateLine
String::notice "Today is: $(date -R)"
String::notice "The PID for $(basename "$0") process is: $$"
Console::waitUser

## -----------------------------------------------------------------------------
## Update and upgrade
## -----------------------------------------------------------------------------
String::separateLine
Package::upgrade
Console::waitUser

## -----------------------------------------------------------------------------
## Clean
## -----------------------------------------------------------------------------
String::separateLine
Package::clean
Console::waitUser

## -----------------------------------------------------------------------------
## Display Linux selections
## -----------------------------------------------------------------------------
String::separateLine
Package::displayLinuxSelections
Console::waitUser

## -----------------------------------------------------------------------------
## Find orphan
## -----------------------------------------------------------------------------
String::separateLine
UpdateSystem::findOrphan
Console::waitUser

String::separateLine
UpdateSystem::findOrphanConfig
Console::waitUser

## -----------------------------------------------------------------------------
## Purge locales
## -----------------------------------------------------------------------------
String::separateLine
UpdateSystem::purgeLocales
Console::waitUser

## -----------------------------------------------------------------------------
## updateDB
## -----------------------------------------------------------------------------
String::separateLine
UpdateSystem::updateDB
Console::waitUser

## -----------------------------------------------------------------------------
## END
## -----------------------------------------------------------------------------
exit 0
