# Greenroom Public Packages

This repo contains Greenroom's public debian packages

## Usage


```bash
curl -s https://raw.githubusercontent.com/Greenroom-Robotics/public_packages/main/scripts/setup-apt.sh | bash -s
sudo apt-get update
```
You should now be able to apt install Greenroom packages.

For example:

```bash
sudo apt-get install xtypes
sudo apt-get install xtypes=1.0.0-*
```

## How it works

- [debian](./debian/) Contains the `.deb` files and Package lists
- Other repos build their `.deb` files in CI and commit them to this repo's [debian](./debian/) folder
- This triggers [update.sh](./scripts/update.sh) to run (in CI) which causes the [Packages](./debian/Packages), [Release](./debian/Release) and more to be created (The private GPG key is a secret in Github actions)