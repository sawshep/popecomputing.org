<main>

# Parts4Hearts

## About

Parts4Hearts is the refurbishing branch of the Pope
Computing Club. The Club works with the [World Computer
Exchange](https://worldcomputerexchange.org) to refurbish
computers for schools in need around the world.

## Refurbishing Checklist

#. Battery holds charge (if applicable)
#. Device POSTs successfully
#. BIOS setup is unlocked
#. Hard drive has been zeored (upon donor's request)
#. Custom Ubuntu distro has been flashed to the disk
#. Operating system boots
#. Keyboard and mouse work

## Creating a Clonezilla Live USB

Download the latest stable Clonezilla release from
[here](https://clonezilla.org/downloads/download.php?branch=stable).
Set the CPU architecture to `amd64`, the file type to `iso`,
and the repository to `auto`.

Plug in a USB type A flash drive with at least 500 megabytes
of storage into your computer.

Be careful while flashing USBs; if an incorrect disk is
selected, data on said disk can be **irreversably
destroyed**!

### Cross-Platform Flashing Instructions

Download and launch [Etcher](https://www.balena.io/etcher/).
Select the downloaded Clonezilla image and the USB drive.
Finally, click flash.

### POSIX Flashing Instructions

Copy the disk image to the flash drive.
```
cp clonezilla-live-[version]-amd64.iso /dev/[disk]
```

</main>
