_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers clr.tera
  find dist/*.json | while read -r file; do
    swift ./json-to-clr.swift "$file" "dist/$(basename -s .json "$file").clr"
  done
