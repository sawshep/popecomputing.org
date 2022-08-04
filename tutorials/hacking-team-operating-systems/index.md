<main>

# Hacking Team: Operating Systems

Welcome, Hacking Team! In this lesson, we'll learn what the
parts of an operating system are and how they work together.
How do we get from hardware to the browser you're reading
this on? 

## Drivers

Every piece of hardware works differently, and the operating
system needs a specialized piece of software to utilize the
hardware resource. This piece of software is called a
driver. They allow a system to understand how to interface
with a piece of hardware.

For example, your operating system may come with a stock GPU
driver, but to get the most optimum performance out of it,
you may need to install a driver by the manufacturer that
has been specifically made for the device.

## Kernel

Through the drivers, the kernel has complete access to the
system's resources, which it allocates accordingly to
programs it creates.

The kernel can only run one program when it first starts.
This initial program is called 'init' on most systems. The
init program is tasked with 'bootstrapping' the system; it
starts all the programs necessary to bring the system to a
useable state.

## Shell

One of the programs started by init is the shell. The shell
serves as a user interface with the kernel. A user can type
and run commands in the shell. This is probably what you
think of when you hear 'command line'!

## Coreutils

Coreutils are basic command-line programs that actually
allow the system to be useable. A few examples of coretutil
program functions would be creating directories, deleting
files, and seeing who is logged in.

## Other Software

Software other than the shell and coretutils fall into this
category. This includes other command-line programs,
graphical desktop environments, web browsers, word
processors, and more.

</main>
