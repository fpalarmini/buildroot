#########################################################
#
# install systemd files
#
#########################################################

cp $BR2_EXTERNAL_my_buildroot_PATH/board/myrpi4b/systemd/*sh ${TARGET_DIR}/usr/bin/
chmod +x ${TARGET_DIR}/usr/bin/*sh

# services
for service in $BR2_EXTERNAL_my_buildroot_PATH/board/myrpi4b/systemd/*service
do
	serviceName=`echo $service|awk -F\/ '{print $NF}'`
	cp $service ${TARGET_DIR}/etc/systemd/system/
	cd ${TARGET_DIR}/etc/systemd/system/
	#ln -sfr ${TARGET_DIR}/etc/systemd/system/$serviceName  ${TARGET_DIR}/etc/systemd/system/multi-user.target.wants/
done

# timers
#	for timer in $BR2_EXTERNAL_my_buildroot_PATH/board/myrpi4b/systemd/*timer
#do
#	timerName=`echo $timer|awk -F\/ '{print $NF}'`
#	cp $timer ${TARGET_DIR}/etc/systemd/system/
#	cd ${TARGET_DIR}/etc/systemd/system/
#	ln -sfr ${TARGET_DIR}/etc/systemd/system/$timerName  ${TARGET_DIR}/usr/lib/systemd/system/timers.target.wants/
#done
