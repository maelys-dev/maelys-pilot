# Changelog

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
