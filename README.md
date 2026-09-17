# maelys-pilot

The smallest product the socle can release, and the first one every change
of maelys-release reaches. It is not a library, not a tool anyone installs:
its purpose is to be released, protected, tapped and adopted before a
product people rely on is.

What a trial of the socle does here, and nowhere else first:

- `adopt` of a candidate, with its CI on a branch;
- `protect --apply`, on a branch protection and a ruleset that exist to be
  written;
- `cut` and the release workflow, on real tags of this repository;
- a channel's `channel.yml`, against a registry that receives nothing of
  value.

The repository is public so that its Actions minutes cost nothing and so
that the branch protection endpoints answer, which they do not for a
private repository of a free plan.

## Install

Nothing to install: download the archive of a release if you want to see
what one contains.

## Build

```sh
make check
```
