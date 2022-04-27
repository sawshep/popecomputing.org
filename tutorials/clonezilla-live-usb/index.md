<main>

# Creating a Clonezilla Live USB

**Requirements:**

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

Be careful when flashing USB sticks; if an incorrect disk is
selected, data on said disk can be **irreversably
destroyed**!

## Cross-Platform Flashing Instructions

These instructions will work on most operating systems,
including Windows, MacOS, and GNU/Linux.

Download and launch
[BalenaEtcher](https://www.balena.io/etcher/). Select the
downloaded Clonezilla image and the USB drive. Finally,
click flash.

## POSIX Flashing Instructions

These instructions will work on any POSIX compliant system,
such as GNU/Linux, BSD, and MacOS, among others.

Copy the disk image to the flash drive.
```
cp clonezilla-live-[version]-amd64.iso /dev/[disk]
```

</main>
