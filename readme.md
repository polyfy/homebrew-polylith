# Polylith Homebrew Tap

This repository contains [Homebrew](https://brew.sh) formula for [Polylith](https://github.com/polyfy/polylith) cli tools. Currently only the `poly` tap needs to be installed. The other `poly-migrator` tap should not be released any more.

## Installation
In order to install this tap, run:

```brew tap polyfy/polylith```

Install poly cli:

```brew install poly```

## Development

Once there is a new release of Polylith cli tools they needed to be published here via this repository so they can be available via Homebrew. In order to make publishing process easy, this repository contains a bash script named `create-formula.sh` which creates a versioned formulae and updates the main formulae to use latest version of the tool. You can run it as following:

```./create-formula.sh TEMPLATE VERSION URL SHASUM```
- TEMPLATE: set to `poly`
- VERSION: version string to be released
- URL: url to the tarball that will be published 
- SHASUM: sha256 for the tarball (e.g. `poly-0.3.31.tar.gz.sha256`)

Example usage:

`./create-formula.sh poly 0.3.31 https://github.com/polyfy/polylith/releases/download/v0.3.31/poly-0.3.31.tar.gz 16ab3de394898b44f696e2ec9a5ab2f7871760f6cd07893f19539e30e5e39088`

This will create a formulae under `Formula/poly@0.3.31.rb` and update `Formula/poly.rb` to latest version.

Each relase in main Polylith repository has the tarballs and shasum files created automatically. Those can be used to release a Homebrew version.
