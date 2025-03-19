FOX_MANIFEST_ROOT=$(gettop)
if [ -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox_defaults.go -a -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox.mk ]; then
	if [ -z "$TW_DEFAULT_LANGUAGE" ]; then
		unset TW_DEFAULT_LANGUAGE
		export TW_DEFAULT_LANGUAGE="ru"
	fi
export FOX_VERSION="R11.2_$(date +%y.%m.%d)"
export OF_MAINTAINER_AVATAR="misc/jgWTT9sjyDA.jpg"

# Avatar Settings
if [ -n "$OF_MAINTAINER_AVATAR" ]; then
	if [ ! -f "$OF_MAINTAINER_AVATAR" ]; then
		# some colour codes
		RED='\033[0;31m'
		GREEN='\033[0;32m'
		ORANGE='\033[0;33m'
		BLUE='\033[0;34m'
		PURPLE='\033[0;35m'
		echo -e "${RED}-- File \"$OF_MAINTAINER_AVATAR\" not found  ...${NC}"
		echo -e "${ORANGE}-- Downloading...${NC}"
		mkdir -p misc
		curl https://github.com/unreal3579/test/blob/main/misc/jgWTT9sjyDA.jpg >> $OF_MAINTAINER_AVATAR
		echo -e "${BLUE}-- Successfully Downloaded the Avatar Image \"$OF_MAINTAINER_AVATAR\" ...${NC}"
		echo -e "${PURPLE}-- Using A Custom Maintainer Avatar from the Downloaded Image \"$OF_MAINTAINER_AVATAR\" ...${NC}"
		echo -e "${GREEN}-- Done!"
	fi
fi

export LC_ALL="C"
export TARGET_DEVICE_ALT="ziyigl"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_BUILD_TYPE="Stable"
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_AB_DEVICE=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_DELETE_AROMAFM=1
export OF_MAINTAINER=unreal3579
export FOX_NO_SAMSUNG_SPECIAL=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_NANO_EDITOR=1
export OF_DYNAMIC_FULL_SIZE=9126805504
export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
export OF_DEFAULT_TIMEZONE="SAUST-3"
export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v27.0.zip

# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
#
