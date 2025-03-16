set shell := ["nu", "-c"]

# Env
env:
    nix develop -c nu

# Watch
w:
    bacon

nix-w:
    nix develop -c "bacon"

# Run
run:
    cargo run

nix-run:
    nix develop -c "cargo" "run"

# Check
check:
    cargo check
    cargo fmt
    cargo nextest run
    cargo clippy
    taplo fmt

fix:
    cargo clippy --fix --allow-staged
    cargo fmt
    taplo fmt
