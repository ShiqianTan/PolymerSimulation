# Polymer Simulation

**A practical knowledge base for molecular simulation of polymers.** Find curated literature, force-field guidance, simulation software, and polymer modeling workflows.

[PDF build workflow](https://github.com/ShiqianTan/PolymerSimulation/actions/workflows/makefile.yml)

> From atomistic models to coarse-grained melts: a growing, source-linked reference for reproducible polymer simulation.

## Start here

| I want to… | Go to |
| --- | --- |
| Find foundational papers and a suggested reading path | [Literature](papers/README.md) |
| Compare simulation packages and parameterization tools | [Tools](tools/README.md) |
| Read the complete guide as a book | [Download the PDF](PolymerSimulation.pdf) |

## What’s covered

- **Models:** atomistic, united-atom, and coarse-grained polymer systems
- **Methods:** force-field selection, parameterization, equilibration, and multiscale modeling
- **Applications:** melts, glassy polymers, electrolytes, and nanocomposites
- **Tools:** LAMMPS, GROMACS, RadonPy, and related packages
- **Analysis:** chain statistics, dynamics, entanglement, and material properties

> Literature-reported MD results can differ from uniformly generated computational datasets because outcomes depend on the force field, model representation, polymer chemistry, and simulation protocol.

## Repository map

| Directory | Contents |
| --- | --- |
| [`papers/`](papers/README.md) | Reading lists, literature notes, and citation collections |
| [`tools/`](tools/README.md) | Software, utilities, installation, and configuration notes |

## Build the PDF

The PDF combines the Markdown guides into one document. Install [Pandoc](https://pandoc.org/) and XeLaTeX, then run:

```sh
make
```

See `make help` for available targets. The PDF is also built automatically on pushes and pull requests to `main`.

## Contributing

Add material to `papers/` or `tools/` where it fits. Keep notes concise, link claims to their sources, and include dependencies and example usage when adding code. When adding a new Markdown chapter, add it to `SOURCES` in the `Makefile` so it appears in the PDF.
