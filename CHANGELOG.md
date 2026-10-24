# Changelog

## 0.4.12 — 2026-10-24

- Adopts the maelys-release candidate `fec6a1c`. Its `publish` checks that
  every target handed its artifact before it assembles anything, and says
  so when they expired: this release runs that step with all three there.
  Its `migrate` reads links from their own file and leaves sentences whole;
  this repository moves no prose, so that path does not run here.
- Nothing else changes here.

## 0.4.11 — 2026-10-24

- Adopts the maelys-release candidate `f2b0a67`, built on maelys-cli
  v0.10.0 and agent-cli-spec v2.19.0: the candidate's help and `describe`
  change, its commands do not. This repository carries no command line of
  its own, so the trial is that its CI runs the candidate's `check`, its
  release is cut by the candidate's `cut`, and the candidate's `preflight`
  and `protect` read its protection as they did.
- Nothing else changes here.

## 0.4.10 — 2026-10-18

- Adopts the maelys-release candidate `612be55`, which corrects three
  readings: a 404 that does not say a branch is open, a check a ruleset
  requires from any source, a name in the working tree alone. This
  repository is protected by a classic protection and its names are
  UTF-8, so none of the three paths runs here: the trial is that nothing
  else moves. Its CI runs the candidate's `check`, its release is cut by
  the candidate's `cut`, and the candidate's `preflight` and `protect`
  read its protection as they did.
- Nothing else changes here.

## 0.4.9 — 2026-10-18

- Adopts the maelys-release candidate `6b4c569`, whose code is laid out
  anew: the entry point holds no command, the command line stands apart
  in `cli/`, one module per command, the forge one object. Nothing it does
  changes. This repository's CI runs the candidate's `check` from the
  pinned socle it fetches, and its release is cut by the candidate's
  `cut`: the restructured code runs where a product runs it.
- Nothing else changes here.

## 0.4.8 — 2026-10-15

- Adopts the maelys-release candidate `85ab235`, whose bottle job
  sets the shared tap's formula of this repository's name aside while it
  builds, pours and tests, and puts it back. This repository's formula is
  in the shared tap at 0.4.7, so its bottles are an update: the new steps
  run here on a real runner. Nothing else moves.
- Nothing else changes here.

## 0.4.7 — 2026-10-12

- Adopts the maelys-release candidate `dc7394e`, which carries what
  0.64.1 named and left. No managed text and no script moves here: the
  two workflows follow the pin. This repository's CI runs the candidate's
  `check` on a runner, its release is cut by the candidate's `cut`, and
  the candidate's `protect` reads this repository's protection and finds
  nothing to change.
- Nothing else changes here.

## 0.4.6 — 2026-10-11

- Adopts the maelys-release candidate `a84fa7f`, which carries five
  corrections of 0.64.0. No managed text and no script moves here: the
  two workflows follow the pin. This repository's CI runs the candidate's
  `check` on a runner, its release is cut by the candidate's `cut`, and
  the candidate's `protect` reads this repository's protection and finds
  nothing to change.
- Nothing else changes here.

## 0.4.5 — 2026-10-11

- Adopts the maelys-release candidate `0752015`, which carries ten
  changes at once. Two managed scripts move here — the one that clones a
  pin now stops on a `repository` line it cannot read, the one that
  clones them all fetches the socle's tag when the workflow names one —
  and so do the agents' texts. This repository's CI runs the new `check`
  on a runner, and its release is cut by the new `cut`.
- Nothing else changes here.

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
