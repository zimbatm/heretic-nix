# Heretic Nix

Stop updating `vendorHash` all the time.

Implementing some of the ideas behind <https://zimbatm.com/notes/nix-packaging-the-heretic-way>

## Usage

This library can only be used on systems where nix is configured with `sandbox = relaxed`.

## Functions

* `buildGoModule` - works the same as nixpkgs's buildGoModule, except it
    doesn't take a `vendorHash`.
