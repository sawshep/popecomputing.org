<main>

# Hacking Team: Operating Systems

Welcome, Hacking Team! In this lesson, we'll learn what the
parts of an operating system are and how they work together.
How do we get from hardware to the browser you're reading
this on? 

## Hardware

While not technically part of the operating system, hardware
is what actually allows a computer to compute and is
important to know if we want to understand higher-level
cybersecurity concepts.

### CPU

The CPU, or central processing unit, executes instructions
from software. They are best at handling a few intensive
calculations.

Sometime, CPU's have a small weak embedded graphics
processing unit. This helps reduce the cost of PC's geared
towards office work; a more powerful dedicated graphics card
would go mostly unused.

### GPU

The GPU, or graphics processing unit, is meant to handle
many quick-to-compute calculations. As it may happen, many
calculations needed to render lighting and other graphics
fall into this category. Another example is cryptocurrency.

### RAM

RAM, or random access memory, is extremely fast
temporary storage in which running programs store
information in.

You can image RAM like a row of thousands of cubbies. Every
cubby has its own address. Because each cubby can only hold
so much, a program may have to store its data over multiple
cubbies.

### PSU

The PSU, or power supply unit, converts the alternating
current from your wall outlet to direct current that your
computer can use.

### HDD/SSD

Hard disk drives and solid state drives keep persistent data
even when you turn off your computer. Remember, this is
unlike RAM which requires power to store data. Typically,
it is slower to access data on hard drives than SSD's.

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
