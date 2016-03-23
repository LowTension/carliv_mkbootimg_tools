# 
# Liviu Caramida (carliv@xda), Carliv Image Kitchen source
# for the moment mkbootfs will only compile in cygwin
#
MAKEFLAGS += --silent

all:libmincrypt.a libcutils.a mkbootimg_tools

libmincrypt.a:
	$(MAKE) -C libmincrypt
	
libcutils.a:
	$(MAKE) -C libcutils

mkbootimg_tools:
	$(MAKE) -C mkbootimg
	
mkbootfs:
	$(MAKE) -C cpio

clean:
	$(MAKE) -C libmincrypt clean
	$(MAKE) -C libcutils clean
	$(MAKE) -C mkbootimg clean
	
clean_out:
	$(MAKE) -C out clean
	
	
clean_cpio:
	$(MAKE) -C cpio clean
	
.PHONY: all clean clean_out
