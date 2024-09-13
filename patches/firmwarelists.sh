diff --git a/functions/firmwarelists.sh b/functions/firmwarelists.sh
index bf264983a..a79873ef9 100755
--- a/functions/firmwarelists.sh
+++ b/functions/firmwarelists.sh
@@ -50,7 +50,7 @@ Firmware_List_From_Contents () {
                        fi
 
                        local PACKAGES
-                       PACKAGES="$(gunzip -c "${CONTENTS_FILE}" | awk '/^(usr\/)?lib\/firmware/ { print $2 }' | sort -u )"
+                       PACKAGES="$(gunzip -c "${CONTENTS_FILE}" | awk '/^(usr\/)?lib\/firmware/ { print $NF }' | sort -u )"
                        FIRMWARE_PACKAGES="${FIRMWARE_PACKAGES} ${PACKAGES}"
 
                        # Don't waste disk space, if not making use of caching
