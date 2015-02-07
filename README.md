# Non-destructive Reset CSS

Code here: [nondestructive-reset.css](nondestructive-reset.css)

## What's new?

This is what use to be the reset css looks like:

    html, body, div, span, applet, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    a, abbr, acronym, address, big, cite, code,
    del, dfn, em, img, ins, kbd, q, s, samp,
    small, strike, strong, sub, sup, tt, var,
    b, u, i, center,
    dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td,
    article, aside, canvas, details, embed,
    figure, figcaption, footer, header, hgroup,
    menu, nav, output, ruby, section, summary,
    time, mark, audio, video {
      margin: 0;
      padding: 0;
      border: 0;
      font-style: normal;
      font-weight: normal;
      font-size: 100%;
      vertical-align: baseline;
    }

Even worse:

    * {
      margin: 0;
      padding: 0;
      border: 0;
      font-style: normal;
      font-weight: normal;
      font-size: 100%;
      vertical-align: baseline;
    }

These are totally destructive methods. And the result is terrible.

### How about this way?

    .html {
      height: 100%;
      font-size: 10px;
    }
    .body {
      margin: 0;
      min-height: 100%;
      min-width: 320px;
      font-family: sans-serif;
      font-size: 1.6rem;
      line-height: 1.25;
      word-wrap: break-word;
      -webkit-font-smoothing: antialiased;
      -webkit-tap-highlight-color: rgba(0,0,0,0);
      -webkit-touch-callout: none;
    }

You can opt-in or out of a per-element basis.

### Opt-in
    <body class="body">

### Opt-out

    <body>

## Too hassle?

I suggest to use Jade mixins.

    mixin body
        body.body
            block

You can call it like this:

    doctype
    +html
        +head
            title here
        +body
            +h1 here

## Test your own
    $ git clone https://github.com/BYODKM/nondestructive-reset.css.git
    $ cd nondestructive-reset.css
    $ npm install
    $ grunt build
    $ grunt serve

## License

MIT
