# To install just use `uv tool install rust-just`

_default:
  @just --list

[group('install')]
install:
  uv sync --all-packages

[group('lint')]
lint:
  uv run ansible-lint
