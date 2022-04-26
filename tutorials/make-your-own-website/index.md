<main>

# Make your own website

(WIP)

## Why?

### Data Control

Hosting your own website gives you more control over your
data. You can present to the world only what you wish to
share, making it a great medium for sharing professional
content like resumes and portfolios.

### Flex Your Muscles

Hosting your own website is a practical demonstration of
your system administration skills, but it's also an exercise
in learning. Knowledge that sticks comes from
experience--web development and server administration is no
different.

### Customized Workflows

Additionally, you control how your website operates. Hosting
a website on your own server allows you to tailor it to your
own niche use cases and workflows. For example, this very
website implements something called "continuous
integration"; every time changes are pushed to the source
repository, the server pulls the new changes, builds them,
and deploys them live.

### Uptime

It may seem counter-intuitive, but hosting your website on
your own server can result in better uptime than even giants
like Amazon, Github, and Replit. Often these hosting
services go down for maintenance or from employee errors. Of
course, this means you have to trust in your skills to build
a stable webserver!

## Local Development

The default install of Python offers an easy-to-use
`http.server` module to serve local files for development.
Use the following command to serve files locally on port
8000:

```bash
python3 -m http.server --directory [directory]
```

Once the local server is running, you can access it via your
browser by navigating to `http://localhost:8000`.

The full usage options of the `http.server` module are
available with the `python3 -m http.server --help` command.

## Hosting Options

There are a few different approaches you can take to host
your website. The following options are in order of
increasing complexity, but also in order of increasing data
control.

### Replit

Replit makes it very easy to host a website. Simply create a
new HTML, CSS, JS project and your project will be available
at `https://[project name].[username].repl.co/`. Note that
for site persistence, you must create the project under an
account.

#### Custom Domain

If you have a domain name, Replit has an option to point
your domain to your project. Click the pencil icon next to
the URL in the right side of the editor. Enter your domain
name, and add a CNAME record pointing to the link Replit
gives you. The process for adding DNS records for your
domain will depend on what registrar you chose for your
domain. Click 'Next' and Replit will check if the new DNS
configuration is working.

### Github Pages

(WIP)

### Self-Hosting

(WIP)

</main>
