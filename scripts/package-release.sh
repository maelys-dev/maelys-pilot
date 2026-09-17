#!/bin/sh
# Package $1 (linux-x86_64, linux-arm64, macos-arm64) into dist/, with one
# .sha256 next to the artifact. Runs on a developer machine without CI: it
# builds for the host it runs on and names the archive after the target it
# was asked for, which the release workflow runs on the matching runner.
set -eu
target="${1:?target: linux-x86_64, linux-arm64 or macos-arm64}"
case "$target" in
    linux-x86_64|linux-arm64|macos-arm64) ;;
    *) echo "scripts/package-release.sh: unknown target $target" >&2; exit 2 ;;
esac
version="$(tr -d '\n' < VERSION)"
make clean >/dev/null
make check >/dev/null
mkdir -p dist
name="maelys-pilot-$version-$target"
stage="$(mktemp -d)"
mkdir -p "$stage/$name"
cp build/maelys-pilot LICENSE README.md "$stage/$name/"
tar -C "$stage" -czf "dist/$name.tar.gz" "$name"
rm -rf "$stage"
if command -v sha256sum >/dev/null 2>&1; then
    (cd dist && sha256sum "$name.tar.gz" > "$name.tar.gz.sha256")
else
    (cd dist && shasum -a 256 "$name.tar.gz" > "$name.tar.gz.sha256")
fi
echo "dist/$name.tar.gz"
