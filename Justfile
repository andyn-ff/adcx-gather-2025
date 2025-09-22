set windows-shell := ["pwsh", "-NoLogo", "-Command"]

marp-version := "latest"

# Runs as default recipe
[private]
help:
  @just --list --unsorted

present:
  npx @marp-team/marp-cli@{{marp-version}} -s .

make-pdf markdown-file pdf-file:
  npx @marp-team/marp-cli@{{marp-version}} "{{markdown-file}}" -o "{{pdf-file}}"
