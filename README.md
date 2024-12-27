# What, Who, Where

This is targeted at the pimax portal retro model, it was not tested on pimax 4k, mini led models. I'm not responsible for bricked devices, dead SD cards, thermonuclear war...

## Pimax portal retro device tree

This device tree was generated using twrpdtgen, it was used to build the twrp in the release section. You can use it to build your own or another kind (e.g: orange fox)

## Pimax portal retro TWRP

Pretty simple to install, 
disclaimer : i did not test with pre/already rooted rom, so i advise unrooting first

download latest TWRP image from :
https://github.com/hmajdouli/pimax_portal_retro_twrp_device_tree_twrpdtgen/releases

Make sure your portal retro has adb enabled, and you android tools downloaded/installed :
https://www.xda-developers.com/install-adb-windows-macos-linux/

```
adb reboot fastboot
fastboot flash recovery kona.recovery.v1.img
fastboot reboot
```
We installed TWRP, now you should have rebooted into your system, let's make TWRP stick, it will reset your rom :

```
adb reboot fastboot
fastboot erase userdata
fastboot -w
```

Now swipe and reboot to recovery, you need to do 2 things : 
+ Go to the wipe menu and decrypt the data partition
+ Go back to the wipe menu and wipe the metadata partition

## Root

Go to https://magisk.zip/ and download magisk zip and apk, then flash the zip using TWRP and install the apk after reboot

## Install GSI Rom

disclaimer : fan is not working when flashing GSI roms, hopefully someone clever than me will figure this out

```
adb reboot fastboot
fastboot flash system_a your_GSI_rom.img (i suppose your active slot is A)
fastboot erase userdata
fastboot -w
```
Then swipe and reboot to recovery (dont reboot to system yet)
Decrypt data partition, wipe any other partiton that has failed to mount (you will see messages in the wipe logs)
Flash Permissiver.zip (see https://github.com/hmajdouli/pimax_portal_retro_twrp_device_tree_twrpdtgen/releases)
Reboot to system, your GSI rom should boot

## Something bad happened

Download the stock rom here :
https://mega.nz/file/WxsTjSBL#n5-F8-vprGZ-o8P82YUBeRNrVie_t6WF-8ZaBHHeUaY

Flash it accordingly to the procedure described in the PDF here :
https://github.com/hmajdouli/pimax_portal_retro_twrp_device_tree_twrpdtgen/releases

## Something really bad happened

Open your pimax retro

Disconnect your battery :
![battery](https://github.com/user-attachments/assets/b7dc9033-cf55-4157-bcfd-f6aa1ea70b60)

Open Qfil and prepare all the files accordingly to the procedure
With a pair of tweezers short the two points shown in the picture and (while still shorting) then plug the usb to the handheld :
![pin](https://github.com/user-attachments/assets/c1a42f15-2eb7-47e8-80f6-0394cf2081aa)

you should be able to flash the rom, then reconnnect the battery and power on

