# auto-setup

A minimal Ansible project to manage personal devices like Ubuntu laptops and Jetson Orin.

## Quick setup

If you have `just` installed, this will create a virtual environment with `uv`, install dev dependencies (including pre-commit and ansible-lint), and install git hooks:

```bash
just setup
```

## Manual installation

1. Clone this repository:
```bash
git clone https://github.com/BlueShifTA/auto-setup.git
cd auto-setup
```

## Linting

Run Ansible lint checks with:

```bash
just lint
```
