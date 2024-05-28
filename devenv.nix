{ pkgs, lib, config, inputs, ... }:

{
  cachix.enable = false;

  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.python311Full
    pkgs.git
    pkgs.poetry
    pkgs.fzf
  ];

  # https://devenv.sh/scripts/
  scripts.pstart.exec = ''
    python main.py
  '';

  enterShell = ''
    poetry install
    source .venv/bin/activate
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep "2.42.0"
    poetry --version
    fzf --version
  '';

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
