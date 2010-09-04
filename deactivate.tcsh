###############################################################################
# virtualenv deactivate.csh scripts
#
# Run this script by: "source /path/to/deactivate.csh"
###############################################################################

###############################################################################
# If no virtualenv, bail
###############################################################################

if ( ! $?VIRTUAL_ENV ) then
    exit
endif

###############################################################################
# Restore the non-virtual PATH
###############################################################################

if ( "$?_OLD_VIRTUAL_PATH" ) then
    setenv PATH "$_OLD_VIRTUAL_PATH"
    unsetenv _OLD_VIRTUAL_PATH
endif

###############################################################################
# Restore the non-virtual PYTHONPATH
###############################################################################

if ( "$?_OLD_VIRTUAL_PYTHONPATH" ) then
    setenv PYTHONPATH "$_OLD_VIRTUAL_PYTHONPATH"
    unsetenv _OLD_VIRTUAL_PYTHONPATH
endif

###############################################################################
# Restore the non-virtual PYTHONHOME
###############################################################################

if ( "$?_OLD_VIRTUAL_PYTHONHOME" ) then
    setenv PYTHONHOME "$_OLD_VIRTUAL_PYTHONHOME"
    unsetenv _OLD_VIRTUAL_PYTHONHOME
endif

###############################################################################
# Deactivate virtualenv
###############################################################################

if ( "$?VIRTUAL_ENV" ) then
    unsetenv VIRTUAL_ENV
endif

###############################################################################
# Rehash the PATH to remove virtual commands
###############################################################################

rehash

###############################################################################
# Re-source .tcshrc to get non-virtual prompt
###############################################################################

source ~/.tcshrc
