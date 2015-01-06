jekyll-truty
============

[![Gem Version](https://badge.fury.io/rb/jekyll-truty.svg)](http://badge.fury.io/rb/jekyll-truty)
[![Code Climate](https://codeclimate.com/github/mkj-is/jekyll-truty/badges/gpa.svg)](https://codeclimate.com/github/mkj-is/jekyll-truty)
[![Build Status](https://travis-ci.org/mkj-is/jekyll-truty.svg?branch=master)](https://travis-ci.org/mkj-is/jekyll-truty)
[![Dependency Status](https://gemnasium.com/mkj-is/jekyll-truty.svg)](https://gemnasium.com/mkj-is/jekyll-truty)
[![security](https://hakiri.io/github/mkj-is/jekyll-truty/master.svg)](https://hakiri.io/github/mkj-is/jekyll-truty/master)

True typography converter for Jekyll. Markdown files will be converted with various plain text improvements like hyphenation, typographic quotes, non-breaking spaces, ellipses, trailing spaces, widows, etc.

For more information about this plugin visit the [Truty project page](https://github.com/mkj-is/Truty).

## Configuration

Add this to your `_config.yml` file.

```yml
gems: [jekyll-truty]
markdown: KramdownTruty
kramdown:
  truty_lang: czech
```

Language can be one of `czech`, `english` or `french`.

## Authors

- [Matěj Kašpar Jirásek](https://github.com/mkj-is) (http://mkj.is)
