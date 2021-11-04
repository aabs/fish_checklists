# Fish Checklists
> boost productivity through checklists rather than tasks

A slightly more elaborate plugin that helps you maintain a collection of
checklists that you can start.  I use it to create checklists for things I do
every day, or when certain events happen, like client meetings or project
kick-offs.

![](header.png)

## Installation

Fisher:

```sh
fisher install aabs/fish_checklists
```

## Usage example

Display usage

```shell
$ chkl

Command Usage for chkl
----------------------
fishdots plugin for checklists

chkl <command> [options] [args]

chkl help       Display help for command chkl
chkl archive    select and archive an active instance
chkl archiveall archive all active instances
chkl define     create new checklist and open in editor
chkl edit       edit the current checklist instance
chkl editdef    edit the current checklist definition
chkl find       find an active checklist
chkl home       change to the checklist definitions folder
chkl ls         list active checklists
chkl lsar       list inactive checklists
chkl lsdef      list checklist definitions
chkl open       open for an active checklist for editing
chkl openar     open a archived checklist for editing
chkl opendef    open a checklist definition for editing
chkl start      select and start checklist and open in editor
chkl tasks      list next task from active checklists
chkl sync       save changes and push to origin repo
```

## Release History

* 0.1.0
    * CHANGE: Initial Creation

## Meta

Andrew Matthews – [@aabs](https://twitter.com/aabs) – industrial.inference@gmail.com

Distributed under the GPL3 license. See ``LICENSE`` for more information.

[https://github.com/aabs/fish_checklists](https://github.com/aabs/fish_checklists)

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
