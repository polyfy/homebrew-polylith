# Polylith Homebrew Tap

This repository contains [Homebrew](https://brew.sh) formula for [Polylith](https://github.com/polyfy/polylith) cli tools. Currently there are two formula in the Polylith tap, `poly` and `poly-migrator`.

## Installation
In order to install this tap, run:

```brew tap polyfy/polylith```

Install poly cli:

```brew install poly```

Install poly-migrator cli:

```brew install poly-migrator```

## Development

Once there is a new release of Polylith cli tools they needed to be published here via in this repository so they can be available via Homebrew. In order to make publishing process easy, this repository contains a bash script named `create-formula.sh` which creates a versioned formulae and updates the main formulae to use latest version of the tool. You can run it as following:

```./create-formula.sh create-formula TEMPLATE VERSION URL SHASUM```
- TEMPLATE: can be either `poly` or `poly-migrator`
- VERSION: version string to be released
- URL: url to the tarball that will be published 
- SHASUM: sha256 for the tarball

Example usage:

`./create-formula.sh poly 0.1.0-alpha3 https://github.com/polyfy/polylith/releases/download/v0.1.0-alpha3/poly-0.1.0-alpha3.tar.gz 186c94f58e96cdb6afe29c9837e21715e2076abaea4737259d7559be45ea264c`

This will create a formulae under `Formula/poly@0.1.0-alpha3.rb` and update `Formula/poly.rb` to latest version.

Each relase in main Polylith repository has the tarballs and shasum files created automatically. Those can be used to release a Homebrew version.
