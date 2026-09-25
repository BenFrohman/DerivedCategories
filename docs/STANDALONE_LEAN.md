# What “standalone Lean” means

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Not Y. Not Term B.

## The sentence

    The import would break a standalone Lean file.
    I’ll make it self-contained.

That is a *file-organization* remark, not a theorem.

## What an import is

In Lean 4, a line

    import Foo.Bar

means: load another module that the *project* already knows how to find.
The kernel then uses definitions from that module (theorems, structures,
numerals).

A *standalone* file is one that a reader can typecheck by itself:
no Mathlib path, no lake package graph, no sibling module. Tutorial
snippets and ledger locks in this repo are written that way on purpose.

## What would break

If `lean/SMore.lean` began with

    import Frohman.Residual
    import Hodge.SpecialSextic

then:

1. Those names are not in Mathlib.
2. This repo has no `lakefile` that exposes them as a package.
3. Opening the file alone would fail at the first `import`, before any
   theorem about S was even parsed.

The failure would look like a missing module, not like a wrong
intersection number. It would teach nothing about the geometry.

## What self-contained means here

Repeat the few numerals the file needs:

    def h4 : Nat := 6
    def Pi_h2 : Nat := 1
    theorem S_class_is_difference : S_h2 = h4 - Pi_h2 := rfl

Those `def`s are the same numbers as in `lean/Intersections.lean`.
Duplication is the point: the file does not depend on a search path.
`rfl` / `decide` close equalities of closed numerals. No `sorry`.

This does *not* construct schemes, Chow groups, or D^b. It locks
arithmetic that the prose already computed.

## Teaching takeaway

- Import = “go find another file in the build.”
- Standalone = “every name used is defined above in this file.”
- A green check on a standalone numeral file is consistency of those
  tags, not a Clay proof and not a Mathlib port of V(F).
