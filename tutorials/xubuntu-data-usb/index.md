<main>

# Creating a Custom Xubuntu Data USB for Clonezilla

**Requirements:**

* USB 3.0 or greater type A flash drive with at least 64
  gigabytes of storage space
* Link to the Xubuntu image download (reach out to <a
  href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;%63%6F%6E%74%61%63%74%40%70%6F%70%65%63%6F%6D%70%75%74%69%6E%67%2E%6F%72%67">contac<!--a@b-->t@popec<!--
  c@d-->omputin<!--e.f -->g.org</a> if you need it)

Download the Xubuntu image zip file from the link provided.

Plug the flash drive into the computer and proceed with the
instructions for your respective platform. Be careful when
formatting flash drives; if an incorrect disk is selected,
data on said disk can be **irreversably destroyed**!

## Formatting a Flash Drive (Windows)

Right click the flash drive File Explorer and click Format.
Make sure the capacity matches that of the flash drive, set
the file system to exFAT, leave the allocation unit size as
default, add a volume label, and finally click start.

Once the flash drive has been formatted, right click the
downloaded zip archive and click 'Extract All...'. Set
'Files will be extracted to this folder:' to the drive
letter of the newly formatted flash drive and click extract.

## Formatting a Flash Drive (GNU/Linux)

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

## Formatting a Flash Drive (MacOS)

WIP

</main>
