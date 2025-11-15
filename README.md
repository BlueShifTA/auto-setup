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

## Inventory layout

Inventory is split by host type under `inventory/`:

- `inventory/laptops.ini` — Ubuntu laptops (e.g., this laptop)
- `inventory/jetsons.ini` — Jetson devices
- `inventory/groups.ini` — shared groups/vars (`personal` includes both)

Set the correct `ansible_host` and `ansible_user` values for your machines.

## Running

Target all devices defined in the inventory:

```bash
./deploy.yml
```

Target only laptops or only Jetsons:

```bash
./deploy.yml -l laptops
./deploy.yml -l jetsons
```


### TODO
- [ ] Check history for other items to add
- [ ] separate tasks - don't use main
