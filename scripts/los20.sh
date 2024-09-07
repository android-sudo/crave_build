crave run --no-patch -- "
rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android.git -b 13.0 -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/android-sudo/android_build_manifest.git -b crdroid-13.0 .repo/local_manifests && \
/opt/crave/resync.sh && \
source build/envsetup.sh && \
brunch lancelot > /dev/null"
