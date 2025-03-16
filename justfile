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
check: clippy
    cargo check
    cargo fmt
    cargo nextest run
    taplo fmt

fix: clippy-fix
    cargo fmt
    taplo fmt
    
# Clippy
clippy:
    cargo clippy -- (nu scripts/clippy.nu)
clippy-fix:
    cargo clippy --fix -- (nu scripts/clippy.nu) 
