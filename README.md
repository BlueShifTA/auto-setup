# auto-setup

A minimal Ansible project to manage personal devices like Ubuntu laptops and Jetson Orin.

## Prerequisites

- Python 3.8 or higher
- pip (Python package installer)
- SSH access to your devices

## Installation

1. Clone this repository:
```bash
git clone https://github.com/BlueShifTA/auto-setup.git
cd auto-setup
```

2. Create a virtual environment and install dependencies:
```bash
python3 -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
pip install -e .
```

3. Verify Ansible installation:
```bash
ansible --version
```

## Configuration

1. Edit the inventory file to match your devices:
```bash
vim inventory/hosts.ini
```

Update the IP addresses and usernames for your devices:
- `ubuntu-laptop`: Your Ubuntu laptop
- `jetson-orin`: Your Jetson Orin device

2. Set up SSH key authentication (recommended):
```bash
ssh-copy-id your_username@device_ip_address
```

## Usage

### Test connectivity
```bash
ansible personal -m ping
```

### Run the setup playbook
```bash
ansible-playbook playbooks/setup.yml
```

### Run on specific hosts
```bash
ansible-playbook playbooks/setup.yml --limit ubuntu-laptop
ansible-playbook playbooks/setup.yml --limit jetson-orin
```

### Dry run (check mode)
```bash
ansible-playbook playbooks/setup.yml --check
```

## Project Structure

```
auto-setup/
├── pyproject.toml          # Python project configuration and dependencies
├── ansible.cfg             # Ansible configuration
├── inventory/
│   └── hosts.ini          # Device inventory
├── playbooks/
│   └── setup.yml          # Main setup playbook
└── README.md              # This file
```

## Customization

The `playbooks/setup.yml` playbook installs essential packages. You can customize it by:

1. Adding more packages to the installation list
2. Creating additional playbooks for specific tasks
3. Adding roles for more complex configurations

## Development

To install development dependencies:
```bash
pip install -e ".[dev]"
```

This includes ansible-lint for linting your playbooks:
```bash
ansible-lint playbooks/setup.yml
```

## License

This project is for personal use.