# Polymer Simulation

A source-linked field guide to polymer informatics and molecular simulation, from representing polymer ensembles to building, parameterizing, simulating, and analyzing them.

![Polymer simulation cover: a polymer chain transitions from atomistic structure to coarse-grained model](assets/polymer-simulation-cover.png)

## Start with a task

| If you need to… | Start here |
| --- | --- |
| Scan tools by workflow stage | [Quick catalog below](#tool-finder) |
| Compare all 78 tools, sources, and evidence levels | [Full tool catalog](tools/catalog.md) |
| Choose builders, force fields, MD engines, or analysis workflows | [Practical tools guide](tools/README.md) |
| Read papers by topic and follow a suggested path | [Literature guide](papers/README.md) |
| Read the guides as one document | [PDF](PolymerSimulation.pdf) |

## Tool finder

Representative starting points from the 2026 catalog. Follow a category link for the complete list, descriptions, and sources.

| Workflow stage | Quick picks | Full list |
| --- | --- | --- |
| Polymer representation and data | BigSMILES · G-BigSMILES · CG-BigSMILES · PolyDAT · psmiles | [Browse](tools/catalog.md#representation-identifiers-and-data) |
| Informatics, prediction, and generation | polyBERT · PolyMetriX · Polymer Genome · SMiPoly · PolyGraphMT · PolyGraphPy | [Browse](tools/catalog.md#polymer-informatics-property-prediction-and-generation) |
| Structure building and assembly | PSP · CHARMM-GUI Polymer Builder · polyply · PolyConstruct · SwiftPol · HTPolyNet | [Browse](tools/catalog.md#polymer-structure-builders-and-molecular-assembly) |
| Automated polymer simulation and design | RadonPy · PEMD · ADEPT · SPACIER · PolyRapid | [Browse](tools/catalog.md#automated-simulation-and-design-workflows) |
| ML force fields and agents | SimPoly / Vivace · PolyJarvis · CGMas | [Browse](tools/catalog.md#machine-learned-force-fields-and-agentic-systems) |
| Force fields and topology tools | PolyParGen · Q-Force · foyer · GMSO · LigParGen · ParmEd | [Browse](tools/catalog.md#force-field-parameterization-and-topology-interoperability) |
| Coarse graining | VOTCA-CSG · PyCGTOOL · Swarm-CG · OpenMSCG · martinize2 | [Browse](tools/catalog.md#coarse-graining-tools) |
| Simulation engines | LAMMPS · GROMACS · OpenMM · HOOMD-blue · ESPResSo | [Browse](tools/catalog.md#simulation-engines) |
| Trajectory analysis and visualization | MDAnalysis · MDTraj · freud · OVITO | [Browse](tools/catalog.md#trajectory-analysis-and-visualization) |
| Workflow and data management | signac · signac-flow | [Browse](tools/catalog.md#workflow-and-data-management) |
| Quantum and electronic structure | DFTB+ · Psi4 · xTB · CP2K | [Browse](tools/catalog.md#quantum-and-electronic-structure-tools) |

## Scope

This repository covers polymer representations and datasets; structure construction; force-field assignment and coarse graining; atomistic, coarse-grained, and quantum calculations; workflow automation; trajectory analysis; and polymer-focused machine learning and agent systems. The catalog distinguishes polymer-native projects from general software that supports polymer work.

Simulation results depend on chemistry, representation, parameterization, system preparation, and protocol. A software package or force-field family alone does not establish that a particular polymer model is validated.

## Build

The PDF combines these Markdown guides. With Pandoc and XeLaTeX installed, run `make`. The same build runs through [GitHub Actions](https://github.com/ShiqianTan/PolymerSimulation/actions/workflows/makefile.yml).

## Contribute

Keep tool claims linked to primary project or publication sources. Label preprints and software-only entries clearly, and include version, parameter set, validation, and protocol details when documenting reproducible calculations. Add new Markdown chapters to `SOURCES` in the Makefile.
