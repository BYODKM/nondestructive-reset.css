# Non-destructive Reset CSS

Source: [nondestructive-reset.styl](src/nondestructive-reset.styl)

## What's new?

This is what use to be the reset css looks like:

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

Even worse:

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

These are totally destructive methods. And the result is terrible.

### How about this way?

```
.ol,
.ul {
  margin: 0;
  padding: 0;
}

```

You can opt-in or out of a per-element basis.

### Opt-in

```
<ul class="ul">
```
### Opt-out

```
<ul>
```

## Too hassle?

I'd suggest to use this [Jade mixin](helper/nondestructive-reset.jade).

```
mixin ul
  ul.ul&attributes(attributes)
    block
```

You can call it like this:

```
+ul
  +li
  +li
```

## Install

```
$ bower install --save nondestructive-reset.css
```

## Test your own

```
$ git clone https://github.com/BYODKM/nondestructive-reset.css.git
$ cd nondestructive-reset.css
$ npm install
$ grunt
```

## Recommendation

Use this nondestructive-reset.css with [normalize.css](https://github.com/necolas/normalize.css) and should **normalize first**.

## License

MIT
