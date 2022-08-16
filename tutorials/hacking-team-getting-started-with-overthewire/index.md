<main>

# Hacking Team: Getting Started with OverTheWire

[OverTheWire](https://overthewire.org/) is a collection of
"wargames," that is, games to learn security concepts and
practice hacking in a legal sandbox where you don't need to
worry about breaking anything.

This tutorial will walk through how to start the
[Bandit](https://overthewire.org/wargames/bandit) challenge
and how to solve the first few levels.

## The Shell

As we learned in the [operating systems
lesson](../hacking-team-operating-systems), the shell is a
user interface to the kernel. We can tell the kernel to run
a program by simply typing the program name and pressing
enter. Let's start by opening a shell. Click on the
appropriate set of instructions for your operating system to
learn how to do so.

<details>
<summary>Windows 10/11</summary>
Press the Windows button, type "powershell", and press
enter. You should see a window open with a blue background
and white prompt.
</details>

<details>
<summary>MacOS and Linux</summary>
Press Ctrl + Alt + t to open a terminal, or search for a
terminal application and launch it. The appearance will vary
depending on your distribution, but it usually has a dark
background and a lighter prompt.
</details>

Now that you have a shell open, you can run commands. Try
running the `ls` command.

## SSH

Just as we can send commands to our own kernel with the
shell, we can use a command called `ssh` (standing for
"secure shell") to send commands to a different computer's
kernel over the network.

We'll need to use SSH to start doing OverTheWire challenges.
The [instructions](https://overthewire.org/wargames/bandit)
tell us that we need to use SSH to log in to user `bandit0`
at `bandit.labs.overthewire.org` on port 2220. This command
will do just that:

`ssh bandit0@bandit.labs.overthewire.org -p 2220`

Let's break this down. The first word, `ssh`, is the name of
the program we want to run. You can think of the second part
like an email. We are telling our SSH program to communicate
with user `bandit0` at the server
`bandit.labs.overthewire.org`. This is similar to telling
your email client to send an email to `user@example.com`.
The username comes before the `@` symbol, while the server
domain comes after.

## Entering the Password

When you run the command we made in the previous section,
you should receive a prompt like this: `Password: `. You'll
find that typing characters does not show any output. This
is actually normal! Every password prompt in command line
programs is not shown for security reasons. Even if you
can't see what you're typing, pressing enter after typing
"bandit0" will log you in.

## Solving Challenges

Now that you're logged in, follow the instructions page for
the level you're on to figure out how to get the password
for the next level.

Note the "Commands you may need to solve this level"
section. This is provided every level, and at least one of
the provided commands will be imperative to solving the
level. You can research the commands online, read the
command's manual by running the `man [command]` program, or
by running `[command] --help`.

Also, some levels have a "Helpful Reading
Material" section. Reading these pages will arm you with the
knowledge you need to solve the challenge. In many cases,
the reading material has the solution to the challenge
verbatim!

The purpose of these challenges is mainly to teach you how
to research computer science principles. Do not feel
discouraged if you do not initially know how to solve a
level! Take a step back and do more research on what
information is given to you.

## Progressing

Once you've found the password to the next level, copy it
down somewhere to save it! Close the SSH connection by
running `exit`, press the up arrow to access your previously
run SSH command, and change the login user to the next
level.

Note that you have to follow a special procedure when
pasting into the password field on Windows. You must
right-click on the title bar, hover over "Edit", then click
"Paste". Finally, pressing enter will log you in. On most
other operating systems, you can paste into the terminal by
typing Ctrl + Shift + v.

## Conclusion

OverTheWire is a fantastic resource for cybersecurity
practice. You should try to at least get to level 10---it's
a good stopping point that will leave you with enough
knowledge for a beginner-level club competition.

Finally, if you have any questions, don't be afraid to reach
out to the Hacking Team Captain over email or in the Discord
server.

</main>
