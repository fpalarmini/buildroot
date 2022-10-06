# External tree Buildroot Configuration

- remember to execute make with variable BR2_EXTERNAL, for example: $ make BR2_EXTERNAL = ../my-buildroot/myrpi4_defconfig


## delete previous build

- make  distclean

## Commands

- make BR2_EXTERNAL=../my-buildroot myrpi4b_defconfig
