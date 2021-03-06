# Non-destructive Reset CSS


- [nondestructive-reset.css](nondestructive-reset.css)
- [Test results](http://byodkm.github.io/nondestructive-reset.css/test/)

## What's new?

This is a _old_ reset css looks like:

```
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
```

Or worse:

```
* {
  margin: 0;
  padding: 0;
  border: 0;
  font-style: normal;
  font-weight: normal;
  font-size: 16px;
  vertical-align: baseline;
}
```

These are totally _destructive_ methods. And the result is terrible.
We need a better way.

## How about this way?

```
.h1 {
  margin: 0;
  font-size: 1em;
  font-weight: inherit;
}
```

It's _Non-destructive_. You can **opt-in** or **out** of a per-element basis.

### Opt-in

```
<h1 class="h1">
```
### Opt-out

```
<h1>
```

### Too much hassle?

There's a [Jade mixin](helper/nondestructive-reset.jade) for that.

```
mixin h1
  h1.h1&attributes(attributes)
    block
```

You can call it like this:

```
+body
  +h1 Title here
  +p  Easy right?
```

## Installation

- [Download](https://github.com/BYODKM/nondestructive-reset.css/releases)
- Bower: `$ bower install nondestructive-reset.css`

## Test your own

```
$ git clone https://github.com/BYODKM/nondestructive-reset.css.git
$ cd nondestructive-reset.css
$ npm install
$ grunt
```

## Recommendation

Use this reset.css with [normalize.css](https://github.com/necolas/normalize.css) and should normalize _first_.

## Supported Browsers

- IE 9+
- Others

## License

MIT
