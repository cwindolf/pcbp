# Project C Project

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
 # actually, use fork with dependencies fixed, I guess
 # https://github.com/sliminality/pandoc-theorem/pull/4
 $ git clone git clone https://github.com/sliminality/pandoc-theorem.git
 $ cd pandoc-theorem
 $ stack install
```

Also, you gotta `open /Library/TeX/Root/texmf-dist/fonts/opentype/public/`, and install the TeX Gyre Pagella fonts from `tex-gyre` and `tex-gyre-math` in there into Font Book.

Also, of course, install MacTeX. And I'm not sure how important it is, but I did a `sudo tlmgr update --self` and `sudo tlmgr update --all`.
