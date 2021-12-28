<main>

# Parts4Hearts

## About

Parts4Hearts is the refurbishing branch of the Pope
Computing Club. The Club works with the [World Computer
Exchange](https://worldcomputerexchange.org) to refurbish
computers for schools in need around the world.

## Donate

Interested in donating computers to Parts4Hearts? Please
reach out to <a
href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;%63%6F%6E%74%61%63%74%40%70%6F%70%65%63%6F%6D%70%75%74%69%6E%67%2E%6F%72%67">contac<!--a@b-->t@popec<!--
c@d-->omputin<!--e.f -->g.org</a>.

## Refurbishing Checklist

#. Battery holds charge (if applicable)
#. Device POSTs successfully
#. BIOS setup is unlocked
#. Hard drive has been zeored (upon donor's request)
#. Custom Ubuntu distro has been flashed to the disk
#. Operating system boots
#. Keyboard and mouse work

## Creating a Clonezilla Live USB

Requirements:

* USB type A flash drive with at least 500 megabytes of
  storage space

Download the latest stable Clonezilla release from
[here](https://clonezilla.org/downloads/download.php?branch=stable).
Set the CPU architecture to 'amd64', the file type to 'iso',
and the repository to 'auto', and click download. You will
automatically be redirected to the download page.

Plug the flash drive into the computer and proceed with
either [Cross-Platform Flashing
Instructions](#cross-platform-flashing-instructions) or
[POSIX Flashing Instructions](#posix-flashing-instruction).

Be careful while flashing USBs; if an incorrect disk is
selected, data on said disk can be **irreversably
destroyed**!

### Cross-Platform Flashing Instructions

These instructions will work on most operating systems,
including Windows, MacOS, and GNU/Linux.

Download and launch
[BalenaEtcher](https://www.balena.io/etcher/). Select the
downloaded Clonezilla image and the USB drive. Finally,
click flash.

### POSIX Flashing Instructions

These instructions will work on any POSIX compliant system,
such as GNU/Linux, BSD, and MacOS, among others.

Copy the disk image to the flash drive.
```
cp clonezilla-live-[version]-amd64.iso /dev/[disk]
```

## Creating a Custom Xubuntu Data USB

Requirements:

* USB 3.0 or greater type A flash drive with at least 64
  gigabytes of storage space
* Link to the Xubuntu image download (reach out to <a
  href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;%63%6F%6E%74%61%63%74%40%70%6F%70%65%63%6F%6D%70%75%74%69%6E%67%2E%6F%72%67">contac<!--a@b-->t@popec<!--
  c@d-->omputin<!--e.f -->g.org</a> if you need it)

Download the Xubuntu image zip file from the link provided.

Plug the flash drive into the computer and proceed with
the instructions for your respective platform.

### Formatting a Flash Drive (Windows)

Right click the flash drive File Explorer and click Format.
Make sure the capacity matches that of the flash drive, set
the file system to exFAT, leave the allocation unit size as
default, add a volume label, and finally click start.

Once the flash drive has been formatted, right click the
downloaded zip archive and click 'Extract All...'. Set
'Files will be extracted to this folder:' to the drive
letter of the newly formatted flash drive and click extract.

### Formatting a Flash Drive (GNU/Linux)

Ensure that the desktop environment has not automatically
mounted the flash drive after plugging it in.

Start the fdisk partition manipulator: `fdisk /dev/[drive]`

Create a new DOS partition table: `o` Create a new
partition: `n`. Press enter to set a primary partition.
Press enter to select the first partition. Press enter twice
more to make the partition size as large as possible.
Confirm this action: `Y`. Finally, write the changes and
exit fdisk: `w`.

Create an ext4 filesystem on the new partition: `sudo
mkfs.ext4 /dev/[drive]1`.

Create a directory to mount the fileysystem to: `mkdir
./usb` then `sudo mount /dev/[drive]1 ./usb`.

Finally, extract the contents of the zip archive to the
mount location and unmount the flash drive: `unzip [path to
zip file] -d ./usb` then `sudo umount -r ./usb`.

### Formatting a Flash Drive (MacOS)

WIP

</main>
