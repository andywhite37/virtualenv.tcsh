#! /bin/tcsh -f

###############################################################################
# virtualenv "activate" script for csh/tcsh
#
# Execute by running:  "source /path/to/activate.csh" in your desired virtual dir
# or by running:  "source /path/to/activate.csh /path/to/virtual/dir" with the
# desired virtual dir as an argument
###############################################################################

###############################################################################
# Deactivate any previous virtualenv
###############################################################################

source ~/bin/deactivate.csh

###############################################################################
# Set VIRTUAL_ENV
###############################################################################

if ( $?1 && $1 != "" ) then

    if ( ! (-e "$1/bin/activate")) then
        echo "Error: $1 does not appear to be a valid virtualenv root, cannot activate there."
        exit
    endif

    setenv VIRTUAL_ENV "$1"
else
    if ( ! (-e "bin/activate")) then
        echo "Error: You do not appear to be in a valid virtualenv root, cannot activate here."
        exit
    endif

    setenv VIRTUAL_ENV "$cwd"
endif

###############################################################################
# Set new PYTHONPATH
###############################################################################

if ( $?PYTHONPATH ) then
    setenv _OLD_VIRTUAL_PYTHONPATH $PYTHONPATH
endif

#setenv PYTHONPATH "${VIRTUAL_ENV}:${VIRTUAL_ENV}/project/apps:${VIRTUAL_ENV}/apps"
setenv PYTHONPATH "${VIRTUAL_ENV}"

###############################################################################
# Set new PATH
###############################################################################

setenv _OLD_VIRTUAL_PATH "$PATH"

setenv PATH "$VIRTUAL_ENV/bin:$PATH"

###############################################################################
# Clear PYTHONHOME
###############################################################################

if ( "$?PYTHONHOME" ) then
    setenv _OLD_VIRTUAL_PYTHONHOME "$PYTHONHOME"
    unsetenv PYTHONHOME
endif

###############################################################################
# Pick up new commands
###############################################################################

rehash

###############################################################################
# Re-source profile to pickup changes to prompt
###############################################################################

source ~/.tcshrc
