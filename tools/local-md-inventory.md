# Local Molecular-Dynamics Workspace Inventory

This chapter summarizes the reusable tools, tasks, examples, and generated material found under the local workspace `/Users/shiqian/Documents/project/md`. It is an index, not a copy of that workspace: the source tree is about 17 GB and contains many trajectories, rendered frames, logs, restart files, compiled objects, and nested Git histories that do not belong in this documentation repository.

**Snapshot date:** 2026-11-24. Local checkouts may contain uncommitted experiments in addition to the cited upstream revision. Treat the upstream links and commit identifiers as provenance anchors, then inspect the local diff before trying to reproduce a result.

## What is in the workspace

| Local area | Main purpose | Reusable content | Snapshot / status |
| --- | --- | --- | --- |
| `agent/PolyJarvis` | Natural-language orchestration of all-atom polymer MD | Three MCP servers, four stage guides, LAMMPS templates, MDAnalysis scripts, example run logs, and completed PE/PEG/PMMA/PS cases | [Upstream](https://github.com/arz-2/PolyJarvis), commit `c778832` (2026-05-30); local checkout was clean when inventoried |
| `lammps/POLY-CP-TL` | Specific-heat data generation and transfer learning | PySIMM amorphous generation, LAMMPS equilibration and EMD/NEMD inputs, analysis scripts, group-contribution code, datasets, and nested-CV MLP training | [Upstream](https://github.com/sobinalosious/POLY-CP-TL), commit `400e3b8` (2026-01-24); local MD scripts and test runs are modified/untracked |
| `lammps/RadonPy` | Standalone polymer construction, equilibration, and thermal-conductivity example | `sample_code.py`, conda environment, LAMMPS inputs, and an example work directory | Not a Git checkout; use the [RadonPy project](https://github.com/RadonPy/RadonPy) for maintained code |
| `lammps/pysimm` | General molecular-system construction and simulation interface | Package source plus examples for small molecules, polyethylene, copolymers, LAMMPS, Cassandra, tacticity, adsorption, and force fields | [Upstream](https://github.com/polysimtools/pysimm), commit `fb33814` (2022-06-26); local source and examples are modified |
| `lammps/LammpsPoly` | Legacy random-copolymer and water-box builder based on a modified PySIMM | DREIDING workflow, monomer library, `basic.in`, installer, and generated LAMMPS data | [Upstream](https://github.com/JeshurunLuke/LammpsPoly), commit `02c4064` (2020-08-27); local input and many run artifacts are modified/untracked |
| `lammps/lammpspoly2/LammpsPoly` | Second, partial copy of LammpsPoly | Top-level driver scripts and a small set of inputs | Same upstream commit; most embedded PySIMM files are deleted, so do not treat this copy as complete |
| `lammps/lammps_web_tutorial` | LAMMPS learning and adapted examples | Input decks for Lennard-Jones systems, bond breaking, polymer pulling, fluid shear, ReaxFF deformation, umbrella sampling, CNT/styrene mixing, PEG/water, and PEG/NaCl | Mix of tutorial inputs and large generated outputs; several files identify the [LAMMPS Tutorials](https://github.com/lammpstutorials) and [LiveCoMS tutorial article](https://doi.org/10.33011/livecoms.6.1.3037) |
| `lammps/lammps_examples` and `lammps/mrkllntschpp-lammps-tutorials` | Minimal learning examples | Lennard-Jones input/logs and one tutorial notebook | Small local examples; provenance is not pinned in the folder |

Approximate folder sizes at the snapshot were 17 MB for PolyJarvis, 117 MB for POLY-CP-TL, 355 MB for the RadonPy example, 58 MB for PySIMM, 5.6 GB for the web-tutorial tree, and 11 GB for the primary LammpsPoly tree. The large sizes are dominated by generated material rather than reusable source.

## Task map

| Task | Best local starting point | Inputs | Main outputs |
| --- | --- | --- | --- |
| Build an all-atom homopolymer from a repeat-unit SMILES | PolyJarvis Stage 1 or `RadonPy/sample_code.py` | Repeat-unit and terminal SMILES, degree of polymerization or atom target, chain count, initial density | Parameterized chain/cell JSON, PDB/XYZ, and LAMMPS `.data` |
| Build alternating, random, or block copolymers and blends | PolyJarvis Mol-Builder tools | Multiple monomer SMILES, sequence/composition, chain counts | Copolymer or mixture cell and LAMMPS `.data` |
| Build a PCFF/OPLS-AA/TraPPE-UA amorphous cell | PolyJarvis EMC path | SMILES, polymer class, chain length/count, initial density | EMC parameters, LAMMPS `.data`, and flags for the simulation templates |
| Build a legacy random copolymer with water | LammpsPoly `mainDreiding.py` | Monomer list, frequency list, water count | Charge-neutral minimized `polymer.lmps`; run with `basic.in` |
| Equilibrate a polymer melt | PolyJarvis Stage 2, RadonPy `EQ21step`, or POLY-CP-TL LAMMPS inputs | Parameterized cell, force-field flags, temperature/pressure, GPU/HPC settings | Restart/data files, thermodynamic log, optional trajectory, convergence diagnostics |
| Measure glass-transition temperature | PolyJarvis Stages 3–4 | Equilibrated cell and temperature-sweep protocol | Density-versus-temperature data, bilinear fit, Tg, and fit-quality metrics |
| Compute density, bulk modulus, RDF, and chain descriptors | PolyJarvis Stage 4 | LAMMPS log/data/dump and atom-type selections | Density, bulk modulus, RDF, end-to-end vectors, radius of gyration, MSD, and orientation metrics |
| Compute thermal conductivity | `RadonPy/sample_code.py` | Equilibrated amorphous cell | Müller-Plathe NEMD result and temperature-gradient quality check |
| Compute polymer specific heat | POLY-CP-TL `md_workflow` | SMILES CSV, PySIMM/LAMMPS environment, SGE array settings | Density plus EMD and NEMD Cp tables; NEMD is the primary data-generation path documented by that project |
| Train a Cp transfer-learning model | POLY-CP-TL `ml_workflow` | Experimental Cp plus MD or group-contribution low-fidelity data | Nested-CV metrics, tuned MLP models, predictions, and parity plots |
| Learn or test individual LAMMPS features | `lammps_web_tutorial`, `lammps_examples`, or the notebook | Tutorial-specific molecule/data files | Logs, trajectories, restarts, images, and analysis data |

## End-to-end workflow represented by the collection

The most complete path is the one documented by PolyJarvis:

1. **Classify and route.** Classify the polymer from SMILES before choosing a builder or force field.
2. **Construct.** Use the RadonPy-backed route for GAFF2-family construction or the EMC route for the supported PCFF, OPLS-AA, and TraPPE-UA classes.
3. **Parameterize and export.** On the RadonPy path, assign charges, polymerize, then assign the force field; export a LAMMPS data file. EMC returns a parameterized data file and engine flags.
4. **Equilibrate.** Generate a staged LAMMPS chain covering minimization, soft heating, compression, electrostatic NPT, cooling, and production. Check convergence before property extraction.
5. **Measure.** Run a temperature sweep for Tg or a target-condition production simulation for other properties.
6. **Analyze and validate.** Extract properties, inspect fit/convergence diagnostics, and compare to relevant experimental or literature values.
7. **Record decisions.** Keep a live run log containing routing, force-field, protocol, recovery, and acceptance decisions.

The POLY-CP-TL branch of the collection extends a similar structure-generation/simulation path into multi-fidelity learning:

`SMILES -> PySIMM cell -> LAMMPS equilibration -> EMD/NEMD Cp -> low-fidelity dataset -> MLP pretraining -> experimental fine-tuning`

Its training script supports Morgan, RDKit, MACCS, topological-torsion, atom-pair, and optional mol2vec-style embeddings, with optional RDKit descriptors. The documented evaluation uses outer and inner cross-validation and separates experimental polymers from the low-fidelity pretraining set.

## PolyJarvis tool groups

### Molecular construction

- Classify a repeat-unit SMILES and select a builder/force-field route.
- Build monomers, search conformers, assign charges, and calculate quantum single-point properties.
- Construct homopolymers, alternating/random/block copolymers, and multicomponent blend cells.
- Assign GAFF2-family parameters after polymerization and export JSON/PDB/XYZ/MOL or LAMMPS data.
- Submit and monitor EMC amorphous-cell builds and recover their engine-specific flags.

### Simulation and monitoring

- Inspect or validate a LAMMPS data file before execution.
- Generate one input or the six-stage equilibration chain from templates.
- Run a single job or an ordered, crash-tolerant chain.
- Poll, watch, list, cancel where supported, and live-tail simulation logs.

### Analysis

- Check energy/density drift and block averages.
- Extend equilibration checks with radius of gyration, center-of-mass MSD, nematic order, and voxel density homogeneity.
- Extract Tg with bilinear-fit diagnostics, equilibrated density, and the isothermal bulk modulus.
- Calculate RDFs and end-to-end vectors, and unwrap image-flagged coordinates.

## Tutorial and example coverage

The tutorial area is useful for isolated LAMMPS concepts rather than a validated polymer production protocol:

| Example family | Concepts present in the local files |
| --- | --- |
| Basic and Lennard-Jones systems | Regions, random atom creation, minimization, NVE/NVT/NPT, output, MPI logs |
| Breakable versus fixed bonds | AIREBO carbon model, molecular bonds, boundary pulling, atom deletion |
| Polymer in solvent | PEG insertion into water, equilibration, pulling, recentering |
| Confined electrolyte shear | TIP4P-style water, NaCl, walls, SHAKE, moving/sheared boundaries |
| Reactive deformation | ReaxFF silica relaxation/deformation, charge equilibration, species and charge histograms |
| Enhanced sampling | Free sampling and umbrella sampling across an external barrier |
| Polymer nanocomposite packing | Styrene insertion around a CNT, class-II interactions, compression to target density |
| Adapted polymer-electrolyte cells | Ten PEG chains in water and in aqueous NaCl, with configurable molecule counts and run lengths |

The PySIMM checkout adds examples for methane, methanol, benzene, polyethylene, PE-co-PS, PMMA, direct LAMMPS execution, liquid mixtures, Cassandra GCMC, MOF swelling, PIM adsorption, tacticity, and CHARMM ethers. These are breadth examples; each still needs chemistry-specific force-field and protocol validation.

## Reuse and migration guidance

### Prefer for new work

- Use PolyJarvis as the local reference for an auditable SMILES-to-property agent workflow.
- Use the standalone RadonPy example when the target is a direct scripted workflow, especially thermal conductivity.
- Use POLY-CP-TL when the target is specific heat or low-fidelity-to-experimental transfer learning.
- Use PySIMM examples to learn its APIs or recover small, focused builders.
- Use the web tutorials to test individual LAMMPS features, not as an unchanged production recipe.

### Treat as legacy or experimental

- LammpsPoly documents DREIDING as its working route and describes PCFF, GAFF, and GAFF2 drivers as unfinished because some dihedrals cannot be typed.
- The second LammpsPoly copy is incomplete and should not be used as the migration source.
- Local checkouts of LammpsPoly, PySIMM, and POLY-CP-TL contain uncommitted changes. Preserve or document those changes before updating from upstream.
- Hard-coded executable paths, conda environment names, scheduler directives, GPU IDs, and module commands are machine-specific configuration, not transferable protocol parameters.

### Do not migrate as documentation assets

Avoid committing `*.ppm`, `*.dump`, `*.lammpstrj`, `*.restart`, large log sets, compiled objects, `__pycache__`, nested `.git` directories, or whole simulation work directories. For a reproducible case, retain only the minimal input, environment/lock information, a small representative result, validation summary, and a manifest pointing to externally stored large artifacts.

## Minimum record for a reusable simulation

For any workflow promoted from the local collection, record:

- the source repository and exact commit or release;
- the repeat-unit convention, terminal groups, chain length/distribution, chain count, and tacticity;
- the builder, charge method, force-field family and parameter-set version;
- the engine version/build packages and hardware/backend settings;
- minimization, equilibration, annealing/cooling, production, and sampling schedules;
- timestep, ensemble, thermostat/barostat, cutoffs, long-range solver, constraints, and random seeds;
- convergence checks, property-fit diagnostics, uncertainty or replica strategy, and experimental comparison;
- file hashes or a manifest for inputs and retained outputs.

This separates reusable scientific provenance from the large amount of incidental runtime output in the source workspace.
