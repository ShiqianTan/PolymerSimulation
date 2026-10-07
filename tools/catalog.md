# Polymer Informatics and Simulation Tool Catalog

This catalog maps the tools in the supplied 2026 literature matrix to the stage of a polymer modeling workflow. It includes polymer-specific packages and general-purpose infrastructure used to construct, parameterize, simulate, or analyze polymer systems.

> Scope and evidence fields are transcribed from the supplied matrix (dated 2026-10-07). Links and publication metadata should be checked against the linked project or publisher before citation or production use. A publication or project listing is not, by itself, evidence that a parameter set is valid for a target polymer.

## How to read the catalog

- **Core / Important / Supporting** reproduces the matrix priority labels; it is a curation aid, not a quality ranking.
- **Evidence A** means a dedicated peer-reviewed paper plus a public project/code or clearly documented tool; **B** means a documented software/project; **C** means supporting/general infrastructure.
- Capability depends on each tool’s input, model representation, chemistry coverage, dependencies, and release. Check the project documentation before choosing a workflow.

## Representation, identifiers, and data

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| BigSMILES | Machine-readable representation of stochastic macromolecular ensembles | A / Core | [BigSMILES: A Structurally-Based Line Notation for Describing Macromolecules (2019)](https://doi.org/10.1021/acscentsci.9b00476) · [code](https://github.com/olsenlabmit/bigSMILES) · [docs](https://olsenlabmit.github.io/BigSMILES/) |
| bigsmiles (Python parser) | Parse, validate and manipulate BigSMILES strings | B / Important | [project / software source](https://github.com/dylanwal/BigSMILES) |
| G-BigSMILES | Augment BigSMILES with ensemble-generation information such as connection probabilities and molecular-weight distributions | A / Core | [Generative BigSMILES: an extension for polymer informatics, computer simulations & ML/AI (2024)](https://doi.org/10.1039/D3DD00147D) |
| CG-BigSMILES | Line notation for coarse-grained polymer models including mapping and force-field links | A / Core | [CG-BigSMILES: Line Notation for Coarse-Grained Models of Polymers (2025)](https://doi.org/10.1021/acs.macromol.5c00516) |
| PolyDAT | Standard schema for polymer characterization, synthesis and transformations | A / Core | [PolyDAT: A Generic Data Schema for Polymer Characterization (2021)](https://doi.org/10.1021/acs.jcim.1c00028) |
| psmiles | Canonicalize, randomize, dimerize, fingerprint and form alternating copolymers | B / Core | [project / software source](https://github.com/FermiQ/psmiles) |
| canonicalize_psmiles | Canonicalize repeat-unit polymer SMILES | B / Important | [project / software source](https://github.com/Ramprasad-Group/canonicalize_psmiles) |

## Polymer informatics, property prediction, and generation

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| polyBERT | Generate polymer embeddings/fingerprints and enable rapid property prediction | A / Core | [polyBERT: a chemical language model to enable fully machine-driven ultrafast polymer informatics (2023)](https://doi.org/10.1038/s41467-023-39868-6) · [code](https://github.com/Ramprasad-Group/polyBERT) · [docs](https://huggingface.co/kuelumbus/polyBERT) |
| PolyMetriX | Data acquisition, polymer featurization, splitting, modeling and evaluation | A / Core | [PolyMetriX: an ecosystem for digital polymer chemistry (2025)](https://doi.org/10.1038/s41524-025-01823-y) |
| Polymer Genome | Web-based ML predictions for polymer properties | A / Core | [Polymer Genome: A Data-Powered Polymer Informatics Platform for Property Predictions (2018)](https://doi.org/10.1021/acs.jpcc.8b02913) |
| SMiPoly | Generate synthesizable virtual polymer libraries using polymerization reaction rules | A / Core | [SMiPoly: Generation of a Synthesizable Polymer Virtual Library Using Rule-Based Polymerization Reactions (2023)](https://doi.org/10.1021/acs.jcim.3c00329) |
| copolymer_informatics | Train multi-task neural networks for copolymer property prediction | A / Important | [project / software source](https://github.com/Ramprasad-Group/copolymer_informatics); Copolymer Informatics with Multi-Task Deep Neural Networks (2022) |
| PolymerAI | Random polymer generation and reinforcement-learning inverse design | B / Important | [project / software source](https://github.com/RUIMINMA1996/PolymerAI); PolymerAI software release (2020) |
| PolyGraphMT | Joint prediction of multiple polymer properties across fidelity levels | A / Core | [ADEPT-PolyGraphMT: automated molecular simulation and multi-task multi-fidelity machine learning for polymer property generation and prediction (2026)](https://doi.org/10.1039/D6DD00206D) |
| PolyGraphPy | Automate DFTB data generation, Bayesian GNN prediction and property-guided generation | A / Core | [PolyGraphPy: A unified Python framework for atomistic simulation and machine learning-driven polymer design (2026)](https://doi.org/10.1016/j.commatsci.2026.114985) |
| TRI-AMDD PolyGen | GPT/diffusion-based generation of polymer electrolytes and iterative discovery | B / Important | [De novo design of polymer electrolytes with high conductivity using generative AIs (2023)](https://arxiv.org/abs/2312.06470) |

## Polymer structure builders and molecular assembly

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| polyGen (3D) | Generate atomic-level polymer conformations from repeat-unit chemistry | A / Core | [A Learning Framework for Atomic-Level Polymer Structure Generation (2025)](https://doi.org/10.1021/acs.chemmater.5c01644) |
| PSP (Polymer Structure Predictor) | Build oligomers, infinite chains, crystals and amorphous polymer models | A / Core | [Polymer Structure Predictor (PSP): A Python Toolkit for Predicting Atomic-Level Structural Models for a Range of Polymer Geometries (2022)](https://doi.org/10.1021/acs.jctc.2c00022) |
| CHARMM-GUI Polymer Builder | Build relaxed polymer chains, melts, solutions and block-copolymer systems | A / Core | [CHARMM-GUI Polymer Builder for Modeling and Simulation of Synthetic Polymers (2021)](https://doi.org/10.1021/acs.jctc.1c00169) |
| pysimm | Build, modify, parameterize and simulate molecular systems; strong amorphous-polymer support | A / Core | [pysimm: A python package for simulation of molecular systems (2017)](https://doi.org/10.1016/j.softx.2016.12.002) |
| Polymatic | Build polymeric networks by iterative bond formation with relaxation | A / Core | [Polymatic: a generalized simulated polymerization algorithm for amorphous polymers (2013)](https://doi.org/10.1007/s00214-013-1334-z) |
| polyply | Generate parameters and coordinates for complex macromolecular topologies at arbitrary resolution | A / Core | [Polyply; a python suite for facilitating simulations of macromolecules and nanomaterials (2022)](https://doi.org/10.1038/s41467-021-27627-4) |
| pyPolyBuilder | Generate topologies and initial structures for linear and branched supramolecules | A / Important | [pyPolyBuilder: Automated Preparation of Molecular Topologies and Initial Configurations for Molecular Dynamics Simulations of Arbitrary Supramolecules (2021)](https://doi.org/10.1021/acs.jcim.0c01438) |
| PolyConstruct | Generate polymer coordinates and topology files by adapting biomolecular simulation pipelines | A / Core | [PolyConstruct: Adapting Biomolecular Simulation Pipelines for Polymers with PolyBuild, PolyConf, and PolyTop (2025)](https://doi.org/10.1021/acs.jcim.4c02375) |
| SwiftPol | Build and parameterize polymer systems while explicitly controlling molecular-weight distribution and sequence features | A / Core | [SwiftPol: A Python package for building and parameterizing in silico polymer systems (2025)](https://doi.org/10.21105/joss.08053) |
| PySoftK | Build polymer topologies and analyze interfaces, aggregation, interactions and self-assembly | A / Core | [Automated Analysis of Soft Matter Interfaces, Interactions, and Self-Assembly with PySoftK (2025)](https://doi.org/10.1021/acs.jcim.4c01849) · [code](https://github.com/alejandrosantanabonilla/pysoftk) · [docs](https://alejandrosantanabonilla.github.io/pysoftk/) |
| MolPy | Modular construction, sequence handling, topology editing, force-field assignment, packing and multi-engine export | A / Core | [MolPy: A Large Language Model-Friendly Toolkit for Reactive Topology Editing in Polymer Simulations (2026)](https://doi.org/10.1021/acs.jcim.6c01137) |
| PolymerModeler | Create amorphous polymer systems and run MD/property calculations | B / Important | [PolymerModeler: A general-purpose simulation tool for polymers (2015)](https://arxiv.org/abs/1503.03894) |
| mBuild | Build complex molecular systems from reusable components | A / Important | [A Hierarchical, Component Based Approach to Screening Properties of Soft Matter (2016)](https://doi.org/10.1007/978-981-10-1128-3_5) · [code](https://github.com/mosdef-hub/mbuild) · [docs](https://mbuild.mosdef.org) |
| Moltemplate | Prepare complex atomistic or coarse-grained molecular systems for LAMMPS | A / Important | [Moltemplate: A Tool for Coarse-Grained Modeling of Complex Biological Matter and Soft Condensed Matter Physics (2021)](https://doi.org/10.1016/j.jmb.2021.166841) · [code](https://github.com/jewettaij/moltemplate) · [docs](https://www.moltemplate.org/) |
| Packmol | Pack molecules into simulation boxes subject to geometric constraints | A / Supporting | [PACKMOL: A package for building initial configurations for molecular dynamics simulations (2009)](https://doi.org/10.1002/jcc.21224) |
| Assemble! | Create polymer chains from monomers and assemble solvated/mixture systems for GROMACS | A / Important | [Easy creation of polymeric systems for molecular dynamics with Assemble! (2016)](https://doi.org/10.1016/j.cpc.2015.12.026) |
| EMC (Enhanced Monte Carlo) | Build and equilibrate atomistic polymer systems using Monte Carlo/connectivity methods | B / Important | [project / software source](https://montecarlo.sourceforge.net/emc/); Enhanced Monte Carlo polymer building software |
| XPB | High-throughput generation of linear, dendritic, hyperbranched and crosslinked polymer structures | A / Core | [XPB: an Extendable Polymer Builder for High-Throughput and High-Quality Generation of Complex Polymer Structures (2025)](https://doi.org/10.1021/acs.jctc.4c01265) |
| HTPolyNet | Generate atomistic crosslinked polymer networks and GROMACS topology files | A / Core | [HTPolyNet: A general system generator for atomistic simulations of polymer networks (2023)](https://doi.org/10.1016/j.softx.2022.101303) |
| Chameleon | Efficient phase-space sampling of dense realistic polymers using connectivity-altering MC moves | A / Important | [Chameleon: A generalized, connectivity altering software for tackling properties of realistic polymer systems (2019)](https://doi.org/10.1002/wcms.1414) |

## Automated simulation and design workflows

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| PEMD | End-to-end modeling of solid polymer electrolytes with OPLS-AA, QM, GROMACS and transport analysis | A / Core | [PEMD: An open-source framework for high-throughput simulation and analysis of polymer electrolytes (2026)](https://doi.org/10.1039/D5DD00454C) |
| RadonPy | Automate modeling, charge calculation, FF assignment, equilibration, NEMD and property extraction | A / Core | [RadonPy: automated physical property calculation using all-atom classical molecular dynamics simulations for polymer informatics (2022)](https://doi.org/10.1038/s41524-022-00906-4) |
| ADEPT | SMILES-to-properties high-throughput workflow combining amorphous model generation, LAMMPS and Psi4 | A / Core | [ADEPT-PolyGraphMT: automated molecular simulation and multi-task multi-fidelity machine learning for polymer property generation and prediction (2026)](https://doi.org/10.1039/D6DD00206D) |
| SPACIER | Closed-loop/on-demand polymer design using RadonPy simulation inside Bayesian optimization | A / Core | [SPACIER: on-demand polymer design with fully automated all-atom classical molecular dynamics integrated into machine learning pipelines (2025)](https://doi.org/10.1038/s41524-024-01492-3) |
| PolyRapid | Automated polymer melt equilibration and high-throughput screening with convergence criteria | A / Core | [PolyRapid: automated high-throughput screening of polymers using a computational workflow (2026)](https://doi.org/10.1039/D6SM00265J) |

## Machine-learned force fields and agentic systems

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| SimPoly / Vivace | Run polymer MD with first-principles-derived MLFF; includes PolyPack/PolyDiss data and Tg/density protocols | A / Core | [SimPoly: Simulation of Polymers with Machine Learning Force Fields Derived from First Principles (2025)](https://doi.org/10.48550/arXiv.2510.13696) · [code](https://github.com/microsoft/simpoly) · [docs](https://huggingface.co/microsoft/simpoly) |
| PolyJarvis | Natural-language-to-polymer-MD agent using MCP servers and RadonPy/EMC/LAMMPS | A / Core | [PolyJarvis: LLM Agent for Autonomous Polymer MD Simulations (2026)](https://arxiv.org/abs/2604.02537) |
| CGMas | Automate AA topology, equilibration, AA→CG mapping, potential derivation and validation from natural language | A / Core | [A Multi-Agent Framework for Automated Coarse-Grained Molecular Dynamics of Polymers (2026)](https://arxiv.org/abs/2608.06694) |

### Related polymer MLFF papers

These research papers describe MLFF methods and applications; they are listed separately from software packages and agents.

| Paper | Focus | Source |
| --- | --- | --- |
| On-the-Fly Machine-Learned Force Fields for High-Fidelity Polymer Glass Transition Simulations (2026) | Adds first-principles calculations when configurations leave the model's confidence domain; applies the adaptive workflow to polymer glass-transition simulations. | [JCIM](https://doi.org/10.1021/acs.jcim.6c02116) · [arXiv](https://arxiv.org/abs/2601.17137) |
| Active Learning of a Neural Network Potential for Large-Scale Atomistic Simulations of Polymer Electrolyte Membranes (2026) | Active-learning neural potential for Nafion membranes across hydration conditions and large atomistic systems. | [JPCB](https://doi.org/10.1021/acs.jpcb.6c04744) |
| How Long Is Long Enough? Extrapolation of Machine-Learning Interatomic Potentials for Oligomeric and Polymeric Systems (2026) | Examines training oligomer size, local chemical environments, and transfer to polymeric systems. | [JCTC](https://doi.org/10.1021/acs.jctc.6c00365) |
| From Oligomers to Entangled Polymers: How to Train a Transferable Machine Learning Interatomic Potential (2026, preprint) | Compares descriptors and active learning for polyethylene potentials trained on oligomers and evaluated on entangled polymers. | [arXiv](https://arxiv.org/abs/2608.01162) |

## Force-field parameterization and topology interoperability

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| PolyPal | Assist parameterization and construction of amorphous all-atom polymer simulations | B / Important | [project / software source](https://github.com/warndorf/polypal) |
| PolyParGen | Generate MD force-field parameters for polymer repeat structures and convert oligomer parameters to polymer form | A / Core | [Development of PolyParGen Software to Facilitate the Determination of Molecular Dynamics Simulation Parameters for Polymers (2019)](https://doi.org/10.2477/jccjie.2018-0034) |
| Q-Force | Derive bonded parameters and charges from QM while retaining transferable nonbonded terms | A / Core | [Q-Force: Quantum Mechanically Augmented Molecular Force Fields (2021)](https://doi.org/10.1021/acs.jctc.1c00195) |
| foyer | Define, disseminate and apply force-field atom-typing rules reproducibly | A / Important | [Formalizing atom-typing and the dissemination of force fields with foyer (2019)](https://doi.org/10.1016/j.commatsci.2019.05.026) · [code](https://github.com/mosdef-hub/foyer) · [docs](https://foyer.mosdef.org) |
| GMSO | Engine-agnostic storage and conversion of molecular topology and force-field information | B / Important | [project / software source](https://github.com/mosdef-hub/gmso); GMSO software / MoSDeF ecosystem · [code](https://github.com/mosdef-hub/gmso) · [docs](https://gmso.mosdef.org) |
| OpenFF Toolkit | Assign modern small-molecule force fields and manipulate chemical topologies; polymer support evolving | B / Important | [project / software source](https://github.com/openforcefield/openff-toolkit); Open Force Field Initiative software · [code](https://github.com/openforcefield/openff-toolkit) · [docs](https://docs.openforcefield.org/projects/toolkit/) |
| OpenFF Interchange | Convert parameterized systems between OpenFF and simulation engines | B / Supporting | [project / software source](https://github.com/openforcefield/openff-interchange); OpenFF Interchange software · [code](https://github.com/openforcefield/openff-interchange) · [docs](https://docs.openforcefield.org/projects/interchange/) |
| ForceBalance | Optimize classical force-field parameters against QM/experimental reference data | A / Important | [Systematic Parametrization of Polarizable Force Fields from Quantum Chemistry Data (2013)](https://doi.org/10.1021/ct300826t) · [code](https://github.com/leeping/forcebalance) · [docs](http://leeping.github.io/forcebalance/doc/html/index.html) |
| AmberTools / Antechamber | Assign GAFF/GAFF2 atom types and derive small-molecule parameters used in many polymer workflows | B / Supporting | [project / software source](https://ambermd.org/AmberTools.php); AmberTools / Antechamber canonical software |
| LigParGen | Generate OPLS-AA parameters for organic molecules; often used on monomers/oligomers | A / Supporting | [LigParGen web server literature (2017)](https://doi.org/10.1093/nar/gkx312) |
| CGenFF / ParamChem | Assign CGenFF atom types and parameters to organic molecules | A / Supporting | [CHARMM General Force Field literature (2010)](https://doi.org/10.1002/jcc.21367) |
| ParmEd | Read, edit and convert molecular mechanics topology/parameter formats | B / Supporting | [project / software source](https://github.com/ParmEd/ParmEd); ParmEd software · [code](https://github.com/ParmEd/ParmEd) · [docs](https://parmed.github.io/ParmEd/html/index.html) |
| InterMol | Convert molecular simulation inputs among major MD engines | A / Supporting | [InterMol: A program for molecular simulation file conversions (2014)](https://doi.org/10.1002/jcc.23711) |

## Coarse-graining tools

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| VOTCA-CSG | Derive coarse-grained potentials using IBI, force matching and related methods | A / Important | [Versatile Object-oriented Toolkit for Coarse-graining Applications (VOTCA) (2009)](https://doi.org/10.1016/j.cpc.2009.08.014) · [code](https://github.com/votca/votca) · [docs](https://www.votca.org) |
| PyCGTOOL | Generate CG bonded parameters from atomistic trajectories using Boltzmann inversion | A / Important | [PyCGTOOL: Automated Generation of Coarse-Grained Molecular Dynamics Models from Atomistic Trajectories (2017)](https://doi.org/10.1021/acs.jcim.7b00096) · [code](https://github.com/jag1g13/pycgtool) · [docs](https://pycgtool.readthedocs.io) |
| Swarm-CG | Optimize Martini bonded terms against AA reference trajectories using particle swarm optimization | A / Important | [Swarm-CG: Automatic Parametrization of Bonded Terms in MARTINI-based Coarse-Grained Models (2020)](https://doi.org/10.1021/acsomega.0c05472) |
| OpenMSCG | Build CG models via force matching, relative entropy and related methods | B / Supporting | [project / software source](https://github.com/ksy141/openmscg); OpenMSCG software · [code](https://github.com/ksy141/openmscg) · [docs](https://software.rcc.uchicago.edu/mscg/) |
| vermouth | Graph transformations and topology processing underlying martinize2/polyply | B / Supporting | [project / software source](https://github.com/marrink-lab/vermouth-martinize); Vermouth software / Martini ecosystem |
| martinize2 | Generate Martini coarse-grained topologies from atomistic structures | B / Supporting | [project / software source](https://github.com/marrink-lab/vermouth-martinize); martinize2 software · [code](https://github.com/marrink-lab/vermouth-martinize) · [docs](https://cgmartini.nl) |

## Simulation engines

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| HOOMD-blue | High-performance GPU MD and particle simulation used extensively in soft matter and coarse-grained polymers | A / Supporting | [HOOMD-blue software papers (2020)](https://doi.org/10.1016/j.commatsci.2019.109363) · [code](https://github.com/glotzerlab/hoomd-blue) · [docs](https://hoomd-blue.readthedocs.io) |
| ESPResSo | Particle-based soft-matter simulation with electrostatics, hydrodynamics and polymer models | A / Supporting | [ESPResSo software papers (2019)](https://doi.org/10.1016/j.cpc.2018.12.005) · [code](https://github.com/espressomd/espresso) · [docs](https://espressomd.github.io) |
| LAMMPS | General MD engine; dominant backend in automated polymer workflows such as RadonPy/ADEPT/SimPoly | A / Supporting | [LAMMPS - a flexible simulation tool for particle-based materials modeling at the atomic, meso, and continuum scales (2022)](https://doi.org/10.1016/j.cpc.2021.108171) · [code](https://github.com/lammps/lammps) · [docs](https://www.lammps.org) |
| GROMACS | High-performance MD engine widely used for atomistic/CG polymer simulations | A / Supporting | [GROMACS development and performance papers (2020)](https://doi.org/10.1021/acs.jcim.0c00516) · [code](https://gitlab.com/gromacs/gromacs) · [docs](https://www.gromacs.org) |
| OpenMM | Python-friendly GPU molecular simulation engine useful for automated workflows | A / Supporting | [OpenMM 7: Rapid development of high performance algorithms for molecular dynamics (2017)](https://doi.org/10.1371/journal.pcbi.1005659) · [code](https://github.com/openmm/openmm) · [docs](https://openmm.org) |

## Trajectory analysis and visualization

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| MDAnalysis | Read, transform and analyze MD trajectories across engines | A / Supporting | [MDAnalysis: A Python package for the rapid analysis of molecular dynamics simulations (2016)](https://doi.org/10.25080/Majora-629e541a-00e) · [code](https://github.com/MDAnalysis/mdanalysis) · [docs](https://www.mdanalysis.org) |
| MDTraj | Fast trajectory I/O and common structural analyses | A / Supporting | [MDTraj: A Modern Open Library for the Analysis of Molecular Dynamics Trajectories (2015)](https://doi.org/10.1016/j.bpj.2015.08.015) · [code](https://github.com/mdtraj/mdtraj) · [docs](https://mdtraj.org) |
| freud | High-performance RDF, clustering, order parameters and local-environment analysis | A / Supporting | [freud: A software suite for high throughput analysis of particle simulation data (2020)](https://doi.org/10.1016/j.commatsci.2020.109811) · [code](https://github.com/glotzerlab/freud) · [docs](https://freud.readthedocs.io) |
| OVITO | Interactive and scripted structural analysis/visualization of particle simulations | A / Supporting | [OVITO - a scientific data visualization and analysis software (2010)](https://doi.org/10.1088/0965-0393/18/1/015012) |

## Workflow and data management

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| signac | Manage parameter spaces, jobs and simulation data in high-throughput computational studies | A / Supporting | [signac: A Python framework for data and workflow management (2018)](https://doi.org/10.1016/j.commatsci.2018.01.035) · [code](https://github.com/glotzerlab/signac) · [docs](https://signac.io) |
| signac-flow | Define and submit reproducible simulation workflows on local/HPC schedulers | B / Supporting | [project / software source](https://github.com/glotzerlab/signac-flow); signac-flow software · [code](https://github.com/glotzerlab/signac-flow) · [docs](https://signac.readthedocs.io/projects/flow/) |

## Quantum and electronic-structure tools

| Tool | Role in a workflow | Evidence / priority | Publication or project source |
| --- | --- | --- | --- |
| DFTB+ | Fast approximate quantum calculations used for polymer/monomer datasets and electronic properties | A / Supporting | [DFTB+, a software package for efficient approximate density functional theory based atomistic simulations (2020)](https://doi.org/10.1063/1.5143190) · [code](https://github.com/dftbplus/dftbplus) · [docs](https://dftbplus.org) |
| Psi4 | Electronic structure, charge, polarizability and other QM calculations | A / Supporting | [Psi4 1.4: Open-source software for high-throughput quantum chemistry (2020)](https://doi.org/10.1063/5.0006002) · [code](https://github.com/psi4/psi4) · [docs](https://psicode.org) |
| xTB | Fast geometry optimization, conformer refinement and electronic estimates | A / Supporting | [Extended tight-binding quantum chemistry methods/software (2017)](https://doi.org/10.1021/acs.jctc.7b00118) · [code](https://github.com/grimme-lab/xtb) · [docs](https://xtb-docs.readthedocs.io) |
| CP2K | Periodic DFT, ab initio MD and mixed quantum/classical simulations for condensed polymer systems | A / Supporting | [CP2K: An electronic structure and molecular dynamics software package (2020)](https://doi.org/10.1063/5.0007045) · [code](https://github.com/cp2k/cp2k) · [docs](https://www.cp2k.org) |

## Related reference

For force-field selection notes, modeling caveats, detailed descriptions, and selected polymer simulation and MLFF papers, see the [practical tools guide](reference.md). The separate [literature guide](../papers/README.md) provides foundational reading paths.
