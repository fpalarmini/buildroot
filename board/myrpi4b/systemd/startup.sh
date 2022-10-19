#!/bin/bash

modprobe brcmfmac

wpa_supplicant -B -i wlan0 -W -D nl80211, wext -c /etc/wpa_supplicant.conf

udhcpc -i wlan0

