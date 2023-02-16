<main>

# Three ways to make your own website (WIP)

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

[Github Pages](https://docs.github.com/en/pages) is a free service by [Github](https://github.com)
that allows you to host awebsite from a Github repository 100% free.
 To get started, create a new repository and name it
`[yourusername].github.io`. Then, upload/create a `index.html` file
in the root of the repository, and add any other website content.
You will need to go into your repository settings and enable Github Pages,
just select the `main` branch and `/root` directory.
Once you push your changes, your website will be available
at `https://[yourusername].github.io/`.

#### Custom Domain
You are also able to put your own domain name for your website, 
but you will need to add a CNAME record at your DNS provider,
and configure it in the Github Pages settings.
See more: [Pages Custom Domains](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)
There is a guide on buying your own domain [Here](#Buying-A-Domain-Name).


### Self-Hosting

Self-hosting your website is the most flexible option, but
also the most complex, but not to worry! It is very easy to
get started. The following sections will walk you through
the process of setting up a simple webserver and domain
name. This already assumes you have a Linux server running.

#### Webserver
There are many options when choosing a webserver. The most notable
being [Apache](https://httpd.apache.org) and [Nginx](https://nginx.org/en/). If you are new to hosting your own website or just want a set it and forget it I recommend [Caddy](https://caddyserver.com), as it's a 
very easy to use webserver that is production ready with automatic HTTPS. Here is a short guide on how to [Install Caddy](https://caddyserver.com/docs/install) on your server.

Follow the [Caddy Documentation](https://caddyserver.com/docs/install) for how to install and configure Caddy on your server as they are well written and easy to follow, and would be redundant to write here.

Once you have installed Caddy, you will need to configure it to serve your website. Caddy uses a special type of file called a [Caddyfile](https://caddyserver.com/docs/caddyfile) to configure itself. Here is an example Caddyfile that will serve a website from the `/var/www/html` directory:

```caddyfile
yourcoolwebsite.com {
    root * /var/www/html
    file_server
}
```
Caddy will automatically generate a certificate for your website that you specify in the Caddyfile, Magic 🪄.

Also since this is a public facing website, you may want to setup a firewall for your webserver in the future. This will depend on which Linux Distro you are using.
#### Buying a Domain Name

To have a custom URL for your website that will be publically accessible, you will need to purchase a domain name from a registrar. You can pick one up
for around a couple bucks a year. Choose any name you want,
be creative! This is your address on the internet.
There are many registrars available, 
but I recommend [Namecheap](https://namecheap.com)
and [Porkbun](https://porkbun.com). Both offer
good pricing and are all around good.
I would avoid using [GoDaddy](https://godaddy.com) as they
have a reputation for adding extra upsells and charges, and
is generally more expensive than other registrars.
[TLD-LIST](https://tld-list.com) is a good resource for finding
the cheapest pricing for your domain name, be sure to check
their reviews, as all have diffrent pros and cons.

#### DNS
Once you have all that, you will need to open your home's router
ports for 80 and 443, and forward them to your home server's local IP address (You may need to look in your router's list of connected devices for your server's IP'). This will depend on your router, Google your router model and "port forwarding" to find a guide on how to do this.

Then you will need to add a DNS record to your domain name. This
will depend on your registrar, but most registrars have a guide
on how to do this. You will need to add an A record pointing to
your home's IP address. If you are using a dynamic IP address from your ISP,
you will need to search up to see how to set up dynamic DNS for your specific
DNS provider. If you arent sure if you are using a dynamic IP address, you probably are.

Done! Your website should be available at your domain name now. Check with [WhatsMyDNS](https://www.whatsmydns.net) to see if your DNS records are correct. If not wait a few minutes/hours and try again, as DNS caching can take a while to update.

<!-- #### VPS/Server
To host your website on a server that isnt in your own house you will need to rent one from a cloud provider. Signing up for [Github Student](https://education.github.com) will give you some free credits to play around with from various different cloud providers. Just spin up a Linux box with your favorite flavor of linux and SSH into it. -->
</main>
