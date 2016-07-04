# composer-transfer

[![Packagist](https://img.shields.io/packagist/v/tamtamchik/composer-transfer.svg?style=flat-square)](tamtamchik/composer-transfer)
[![Packagist](https://img.shields.io/packagist/dt/tamtamchik/composer-transfer.svg?style=flat-square)](tamtamchik/composer-transfer)
[![Packagist](https://img.shields.io/packagist/l/tamtamchik/composer-transfer.svg?style=flat-square)](tamtamchik/composer-transfer)

Easy and fast file sharing from the command-line brought to Composer community.
Based on [https://transfer.sh](https://transfer.sh)

## Installation

Install package globally:

```
$ composer global require tamtamchik/composer-transfer
```

> **Note!** Make sure to place the `~/.composer/vendor/bin` directory (or the equivalent directory for
your OS) in your PATH so the `transfer` executable can be located by your system.

## Usage

Now uploading your file to the web is as easy as running `transfer` command:

```
$ transfer file.txt
######################################################################## 100.0%
https://transfer.sh/7ctjG/file.txt
```

## Creators

### Original package

- [Remco Verhoef](https://github.com/nl5887)
- Uvis Grinfelds
- [All Contributors](https://github.com/dutchcoders/transfer.sh/graphs/contributors)

### Composer package:

- [Yuri Tkachenko](https://github.com/tamtamchik)
- [All Contributors](../../contributors)

## TODO

- Create PHP Class for uploading files to [https://transfer.sh](https://transfer.sh).

## Copyright and license

Original [https://transfer.sh](https://transfer.sh) code and documentation copyright 2011-2016 Remco Verhoef.

Code released under [the MIT license](LICENSE).
