#!/usr/bin/env bash

set -e

if [[ $# -ne 3 ]]
then
	echo "Creates a new formula for specific version and updates the root formula with the new version."
    echo "Usage: "
    echo ""
    echo "create-formula VERSION URL SHASUM"
    echo ""
    echo "Example: "
    echo ""
    echo "create-formula 1.2.3 https://example.com/something-1.2.3.tar.gz 80d311f07e7dfc4968f12cbf0853ad66de94a11cdc5bfafaec4dda7e6e3ee7c9"
    exit 1
fi

new_formula_path="./Formula/poly@$1.rb"

rm -rf new_formula_path

cp ./formula_templates/poly_template.rb $new_formula_path

sed -i '' -e 's/URL/'"$2"'/' $new_formula_path
sed -i '' -e 's/SHASUM/'"$3"'/' $new_formula_path

rm -rf ./Formula/poly.rb

cp ./formula_templates/poly_template.rb ./Formula/poly.rb

sed -i '' -e 's/URL/'"$2"'/' ./Formula/poly.rb
sed -i '' -e 's/SHASUM/'"$3"'/' ./Formula/poly.rb
