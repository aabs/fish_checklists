# Fish Tech
> jump to folders by technology

Fish tech is a little plugin allowing quick switching between technology
specific areas in a large development folder hierarchy

![](header.png)

## Installation

Fisher:

```sh
fisher add aabs/fish_tech
```

## Usage example

Imaging your development code tree looks like this:

```shell
$ tree -L 2 ~/dev
/home/me/dev
└── by-technology
    ├── awk
    ├── elixir
    ├── fish
    ├── html
    ├── javascript
    ├── kubernetes
    ├── markdown
    ├── nixos
    ├── rdf
    └── rust

12 directories, 1 file
```

You can quickly jump to your elixir code tree to find that project you've
forgotten the name of:

```shell
~ $ tech cd elixir

~/d/b/elixir $
```

if your memory is really bad like mine, then you can even get help selecting the technology areas using `fzf`:

```shell
~ $ tech open

  rust
  rdf
  projects.db
  nixos
  markdown
  kubernetes
  javascript
  html
  fish
  elixir
  editors
> awk
  12/12
>
```

## Release History

* 0.1.0
    * CHANGE: Initial Creation

## Meta

Andrew Matthews – [@aabs](https://twitter.com/aabs) – industrial.inference@gmail.com

Distributed under the GPL3 license. See ``LICENSE`` for more information.

[https://github.com/aabs/fish_tech](https://github.com/aabs/fish_tech)

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki

<!--
 vim: set ts=2 sw=2 tw=80 et foldmethod=syntax foldlevelstart=20 : 
 -->
