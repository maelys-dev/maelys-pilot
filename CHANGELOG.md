# Changelog

## 0.4.4 — 2026-10-10

- Adopts the maelys-release candidate `a50c50b`, which vendors
  the framework of maelys-cli 0.7.0: `adopt`, `check` and both stops of
  `cut` run here under the new module before they run on a product.
- Nothing else changes here.

## 0.4.3 — 2026-10-10

- Adopts the maelys-release candidate `9ffbb48`, so that a real
  release of this repository is cut by it: the first stop asks GitHub
  whether it verifies the release commit, and the second verifies the tag
  against the allowed signers of the socle.
- Nothing else changes here.

## 0.4.2 — 2026-10-09

- Adopts the maelys-release candidate `20e96d0`, so that a real release of
  this repository runs the step `release.yml` gained: the provenance of
  every file `SHA256SUMS` names is verified, with the command
  `RELEASING.md` gives, before the release is published.
- Nothing else changes here.

## 0.4.1 — 2026-10-08

- Adopts the maelys-release candidate `b3187cc`, so that a real release of
  this repository runs `release.yml` with the artifact actions moved from
  v4 to v7 and v8: three targets hand their files to `publish`, which must
  still find each in a directory of its own.
- Nothing else changes here.

## 0.4.0 — 2026-10-08

- Pins two repositories its build does not read, so that the socle's
  clones run here: `maelys-json`, which every job clones, and
  `maelys-system`, marked `on-request`, which the socle's jobs skip and one
  job of this repository clones by name.
- Adopts the maelys-release candidate `b0409ab`: the `on-request` attribute
  and the duration of each clone in the log, a bound on every job of the
  socle, `apt-get update` cut after two minutes, and the framework that
  completes under bash and zsh.

## 0.3.0 — 2026-10-03

- Publishes a Homebrew formula: `brew install maelys-dev/tap/maelys-pilot`.
  It exists so that the socle's Homebrew path runs here before it runs on
  a product — render, bottle on two macOS runners, **pour the bottle as a
  user would and run the formula's own test**, publish.
- Adopts the maelys-release candidate `bd2be3f`, which carries that pour.

## 0.2.2 — 2026-09-29

- Adopts the maelys-release candidate for 0.62.2, so that a real release of
  this repository measures what the socle's tests cannot: `cut` reading back
  the release branch and the tag it pushed — the tag by the commit it names
  — and the sanitizer job of `check-product.yml` receiving its compiler
  through `MAKEFLAGS` rather than as words appended to its command.
- Nothing else changes here.

## 0.2.1 — 2026-09-25

- Moves the socle pin to the commit that reads its own commit where GitHub
  puts it. `v0.2.0` published nothing: the release workflow stopped on
  `the reusable workflow's own commit is unknown`, because the property it
  read has never been filled in that context. A published tag is never
  moved, and a socle at fault is answered by a patch release of the product
  carrying the corrected pin — this one.
- Nothing else changes here.

## 0.2.0 — 2026-09-25

- Adopts the maelys-release candidate for 0.62.0, so that a real release of
  this repository measures what no test can: the signature step of
  `release.yml` reading the allowed signers at the socle commit this
  repository pins, and judging the tag at the moment GitHub saw it.
- Nothing else changes here. The pilot exists to run the socle's writes
  through the whole cycle before a product does.

## 0.1.0 — 2026-09-17

- First release of maelys-pilot.

## 0.0.0 — 2026-09-17

- Created by `maelys-release new`. Nothing is published yet: VERSION says
  what was published last, and the first release is cut as 0.1.0.
