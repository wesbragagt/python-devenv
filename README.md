# Example Python with Poetry and Nix

This project has all its dependencies scoped to the project. Uses devenv and nix to manage dependency installs.

## Requirements

* [devenv](https://devenv.sh)
* [nix](https://nixos.org)

## Usage

1. `git clone`
2. `devenv test`
3. `devenv shell`

**Note**: If you have a direnv hook it should recognize the `.envrc` file and activate the environment automatically.
