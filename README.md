# Polymer Simulation

A source-linked field guide to polymer informatics and molecular simulation, from representing polymer ensembles to building, parameterizing, simulating, and analyzing them.

## Start with a task

| If you need to… | Start here |
| --- | --- |
| Find a package by workflow stage or compare 78 tools | [Tool catalog](tools/catalog.md) |
| Choose builders, force fields, MD engines, or analysis workflows | [Practical tools guide](tools/README.md) |
| Read papers by topic and follow a suggested path | [Literature guide](papers/README.md) |
| Read the guides as one document | [PDF](PolymerSimulation.pdf) |

## Scope

This repository covers polymer representations and datasets; structure construction; force-field assignment and coarse graining; atomistic, coarse-grained, and quantum calculations; workflow automation; trajectory analysis; and polymer-focused machine learning and agent systems. The catalog distinguishes polymer-native projects from general software that supports polymer work.

Simulation results depend on chemistry, representation, parameterization, system preparation, and protocol. A software package or force-field family alone does not establish that a particular polymer model is validated.

## Repository map

| Path | Purpose |
| --- | --- |
| [`tools/README.md`](tools/README.md) | Navigation and practical selection guidance |
| [`tools/catalog.md`](tools/catalog.md) | Source-linked inventory organized by workflow stage |
| [`tools/reference.md`](tools/reference.md) | Force-field notes, workflows, and detailed software/paper descriptions |
| [`papers/README.md`](papers/README.md) | Reading lists, citation collections, and literature notes |

## Build

The PDF combines these Markdown guides. With Pandoc and XeLaTeX installed, run `make`. The same build runs through [GitHub Actions](https://github.com/ShiqianTan/PolymerSimulation/actions/workflows/makefile.yml).

## Contribute

Keep tool claims linked to primary project or publication sources. Label preprints and software-only entries clearly, and include version, parameter set, validation, and protocol details when documenting reproducible calculations. Add new Markdown chapters to `SOURCES` in the Makefile.
