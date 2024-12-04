#!/bin/bash

base_version=$(git show origin/main:pyproject.toml | grep '^version = ' | cut -d '"' -f2)
branch_version=$(grep '^version = ' pyproject.toml | cut -d '"' -f2)

if [ "$(printf '%s\n' "$base_version" "$branch_version" | sort -V | tail -n 1)" = "$base_version" ]; then
    echo "Version in pyproject.toml on branch must be higher than on main."
    exit 1
else
    echo "Version check passed: branch version is higher."
fi
