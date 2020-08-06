# Project C-B Project

## Setup

Ugh. What a pain, but here it is.

The Conda env:

```
 $ conda create -n pcp python=3.8
 $ conda activate pcp
 $ conda install -c conda-forge pandoc
```

Filters:

```
 $ brew install haskell-stack
 $ cd ~/.local/
 # use this "pandoc-theorem" for theorem environments
 # actually, use fork with dependencies fixed, I guess
 # https://github.com/sliminality/pandoc-theorem/pull/4
 # my fork builds on that with some new envs
 $ git clone https://github.com/cwindolf/pandoc-theorem
 $ cd pandoc-theorem
 $ stack install
```

Also, you gotta `open /Library/TeX/Root/texmf-dist/fonts/opentype/public/`, and install the TeX Gyre Pagella fonts from `tex-gyre` and `tex-gyre-math` in there into Font Book.

Also, of course, install MacTeX. And I'm not sure how important it is, but I did a `sudo tlmgr update --self` and `sudo tlmgr update --all`.

Finally, to build, just `make`. See the `Makefile` for details.
