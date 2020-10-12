#!/usr/bin/env bash

set -e

if [[ $# -ne 4 ]]
then
	echo "Creates a new formula for specific version and updates the root formula with the new version."
    echo "Usage: "
    echo ""
    echo "create-formula TEMPLATE VERSION URL SHASUM"
    echo ""
    echo "Example: "
    echo ""
    echo "create-formula poly 1.2.3 https://example.com/something-1.2.3.tar.gz 80d311f07e7dfc4968f12cbf0853ad66de94a11cdc5bfafaec4dda7e6e3ee7c9"
    exit 1
fi

version=$2
version_without_dots=${version//./}
version_name="AT${version_without_dots//-/}"
new_formula_path="./Formula/$1@$version.rb"

rm -rf new_formula_path

cp "./formula_templates/$1_template.rb" $new_formula_path

sed -i '' -e 's/VERSION_NAME/'"$version_name"'/' $new_formula_path
sed -i '' -e 's/URL/'"$3"'/' $new_formula_path
sed -i '' -e 's/SHASUM/'"$4"'/' $new_formula_path

rm -rf "./Formula/$1.rb"

cp "./formula_templates/$1_template.rb" "./Formula/$1.rb"

sed -i '' -e 's/VERSION_NAME//' "./Formula/$1.rb"
sed -i '' -e 's/URL/'"$3"'/' "./Formula/$1.rb"
sed -i '' -e 's/SHASUM/'"$4"'/' "./Formula/$1.rb"
