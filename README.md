# oLane Homebrew Tap

Homebrew formulae for [Copass](https://copass.id) and oLane tools.

## Copass CLI (current)

```bash
brew tap olane-labs/tap
brew install copass

copass --version
copass --help
```

Upgrade to the latest release:

```bash
brew update
brew upgrade copass
```

Uninstall:

```bash
brew uninstall copass
```

## Olane CLI (deprecated)

The `olane` formula ships the legacy `@olane/o-cli` npm package and exposes
the `olane` binary. That package has been renamed to `@copass/cli` and the
binary to `copass`. **New installs should use `brew install copass`.**

If you're upgrading from the old formula:

```bash
brew uninstall olane
brew install  copass
```

Removing the tap entirely:

```bash
brew untap olane-labs/tap
```

## Releasing a new version

Publish the npm package first (from the `o-network-cli` repo):

```bash
cd o-network-cli
pnpm run release
```

Then dispatch the tap's **Update Formula** workflow from the Actions tab:

1. Pick the formula — `copass` (default) or `olane` (legacy).
2. Supply the version, e.g. `2.2.4`.

The workflow resolves the npm tarball URL, computes its `sha256`, bumps the
formula file, and pushes the commit. `brew update && brew upgrade copass`
will pick the new release up on user machines.

The CLI's release workflow in `o-network-cli` dispatches this tap update
automatically after a successful npm publish, so manual runs are only needed
for one-off corrections.
