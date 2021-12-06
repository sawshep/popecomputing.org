* {
    box-sizing: border-box;
}

body {
    line-height: 1.5;

    font-family: monospace, monospace;
    font-size: large;
    text-align: justify;
    text-justify: inter-word;
    padding: 1em;
    padding-bottom: 60em;
}

a {
    text-decoration: none;
    color: #1e7bbd;
}

a:hover {
    color: #13294b;
}

h1, h2, h3, h4, h5, h6 {
    color: #13294b;
}

h1 {
    text-align: center;
    font-size: 2em;
    background-color: #1e7bbd;
    color: white;
    border: 4px solid #13294b;
    margin: 0;
    padding: 0.25em;
}

img {
    width: 100%;
    height: auto;
}

nav {
    float: left;
    width: 15%;
    text-align: center;
    margin-top: 1em;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  /*overflow: hidden;*/
}

nav li {
    padding: 0.5em 0;
}

nav a {
  display: block;
  color: white;
  background-color: #13294b;
  text-align: center;
  border: 2px solid white;
  padding: 0 0.25em;

  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
nav a:hover {
  color: white;
  background-color: #1e7bbd;
}

aside {
    float: left;
    width: 20%;
    /*padding: 1em 0;*/
    padding: 0;
    margin: 0;
}


main {
    float: left;
    width: 60%;
    padding: 0;
    padding-top: 1em;
}

@media only screen and (max-width: 720px) {
    nav, main, aside {
        width: 100%
    }
}
