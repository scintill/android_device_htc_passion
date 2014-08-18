# Device configuration for Google Nexus One (passion)

For lack of a better place (or my knowledge of a better place), I put Makefile
customizations and manifests in here too.  This is a stripped-down build of Cyanogenmod 11 M8 with WhisperYAFFS userdata encryption and LUKS SD card encryption.  See [parkedraccoon's thread](http://forum.xda-developers.com/showthread.php?t=2573352) for general information.

I don't really imagine anyone else using this, so the encryption stuff is not really documented and doesn't automatically initialize itself.  Email me if you'd like to use it, and I'll be happy to help.

Thanks goes to [parkedraccoon at XDA-Developers](http://forum.xda-developers.com/member.php?u=4861589) (CM11 device repos and personal help with building), Evervolv (more device stuff), and of course the Cyanogenmod team and everyone else contributing to Android.

## Build instructions

1. Checkout with `repo` using `build/manifest.xml` as the default manifest and `build/scintill_cm11_passion.xml` as a local manifest.  `build/build-manifest.xml` is a snapshot from `repo manifest -r`.

2. Patches:

	1. frameworks/native - revert 4f089f8886cf1d9ef5e88a8d471d8785adf6365e

	2. cherry-pick `https://github.com/csytracy/android_frameworks_opt_telephony/commit/f3e32aa9b524e1f515e64ddf4314ef63ef8c16dd` (GSM won't connect)

	3. ADWLauncher has a few Java build errors, but the lines look cosmetic and fairly unimportant, so
	 comment them out and re-build.

3. Go to the LatinIME checkout base and run the commands contained in build/slim-LatinIME.sh

## Install instructions

1. Flash bootloader as directed at [parkedraccoon's thread](http://forum.xda-developers.com/showthread.php?t=2573352).

2. Flash the zip in `out/target/product/passion/` as normal.

3. Set up encryption by formatting /dev/block/mtdblock5 with WhisperYAFFS and making /data/local/sdcard.key a LUKS key to the SD card.

4. (Optional) Set the property `persist.sys.zram.enabled=true` to enable ZRAM.  Check in `/proc/swaps` to verify it's enabled.

## Known issues

1. Some kind of out-of-memory error can cause the UI to not come up when waking up the screen, so the screen stays black with lights on.  Sometimes it recovers, sometimes I have to reboot (press volume-down+power+trackpad ball).  Hopefully the latest KSM and ZRAM additions fix this.  I haven't been able to reproduce it on parkedraccoon's build...
