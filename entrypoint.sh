#!/bin/sh -l

echo "$GITHUB_WORKSPACE"

for dir in "$GITHUB_WORKSPACE"/packages/*; do
    # check if item is a directory and run the tests
    if [ -d "$dir" ]; then
        echo "Run Move tests for: $dir"
        sui move test --path "$dir"
    fi
done
