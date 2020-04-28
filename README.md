# vim-beancount

This is a mildly simplified fork of vim-beancount, with the following changes:

- Dropped support for syntastic, ale, and deoplete. I don't use these plugins.
- AlignCommodity is fully replaced with `bean-format` through `formatprg`.

More code might be refactored or rewritten in the future. The overall goal is
to simplify and minimize, preferring the use of native vim and beancount
functionality instead of depending on additional code or other plugins.

Keep in mind that this is first and foremost for personal use.

## Installation

Use native Vim package support, see https://vimhelp.org/repeat.txt.html#packages

## Feature Highlights

For full details, see [doc/beancount.txt](doc/beancount.txt).
