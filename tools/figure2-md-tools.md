# MD toolchain in Smith et al. (2026), Figure 2

Source: L. Smith, S. Ericson, and P. Carbone, [*High-throughput simulations and machine learning to predict miscibility in polymers*](https://doi.org/10.1557/s43577-026-01202-y), *MRS Bulletin* (2026), Figure 2 and its surrounding discussion. The figure is a functional map, not a performance ranking. Reference numbers below match that paper. Checked 2026-11-11.

The map covers **19 Figure 2 entries**; Polyply and MAD share one box. A tool can span several stages; the role column describes its main use in Figure 2. These packages prepare or manage MD studies rather than automatically establishing equilibrium miscibility. Review the force field, composition, temperature, equilibration, and analysis protocol for each system.

| Stage | Tool | Main role in a polymer MD workflow | Paper ref. | Project / documentation |
| --- | --- | --- | --- | --- |
| Build | PySoftK | Construct polymer architectures and initial structures from monomer inputs. | 113 | [PySoftK docs](https://alejandrosantanabonilla.github.io/pysoftk/) |
| Build | SwiftPol | Build polydisperse polymer systems. | 114 | [SwiftPol](https://github.com/matta-research-group/SwiftPol) |
| Build | mBuild | Compose chains and molecular simulation boxes from reusable building blocks. | 115 | [mBuild docs](https://mbuild.mosdef.org/en/stable/) |
| Build / assign | PySIMM | Generate polymer systems and prepare force field and simulation inputs. | 116 | [PySIMM](https://pysimm.org/) |
| Build | PSP | Generate atomic polymer models, including chains and amorphous structures, from repeat-unit SMILES. | 117 | [PSP](https://github.com/Ramprasad-Group/PSP) |
| Build / assign | Polyply + MAD Polymer Editor | Build polymer topologies and configurations; MAD provides a web interface backed by Polyply. | 118, 119 | [Polyply](https://polyply.github.io/polyply_1.0/) · [MAD tutorial](https://mad.ens-lyon.fr/tutorials) |
| Build / assign | EMC | Build amorphous polymer cells and assign supported force fields. | 120 | [EMC](https://montecarlo.sourceforge.net/) |
| Build / assign | CHARMM-GUI Polymer Builder | Prepare polymer systems and engine input through a graphical interface. | 121 | [Polymer Builder demo](https://www.charmm-gui.org/?doc=demo&id=polymer&lesson=1) |
| Assign | OpenFF Toolkit | Apply SMIRNOFF force fields through chemical perception; validate coverage for the target chemistry. | 122; toolkit also 136 | [OpenFF software](https://openforcefield.org/software/) |
| Assign | DL_FIELD | Generate classical force field files for supported MD engines. | 123 | [DL_FIELD](https://www.ccp5.ac.uk/dl_field/) |
| Assign | Foyer | Assign atom types and force field parameters using machine-readable rules. | 124 | [Foyer docs](https://foyer.mosdef.org/en/stable/) |
| Build / equilibrate | PolySMart | Grow coarse-grained polymers through a reactive scheme, including polydispersity. | 125 | [PolySMart](https://github.com/HMakkiMD/PolySMart) |
| Build / equilibrate / assign | RadonPy | Automate polymer model preparation, equilibration checks, and property calculations. | 126 | [RadonPy](https://github.com/RadonPy/RadonPy) |
| Build / equilibrate / assign | PolyRapid | Build and equilibrate polymer melts using adaptive annealing cycles. | 127 | [PolyRapid](https://github.com/paolacarbone/PolyRapid) |
| Equilibrate | GAMERS | Equilibrate melts with Kuhn-scale mapping and restrained backmapping. | 128 | [GAMERS](https://github.com/webbtheosim/GAMERS) |
| Equilibrate | Polymatic | Simulated polymerization and staged compression/relaxation protocol. | 129 | [Method paper](https://doi.org/10.1007/s00214-013-1334-z) |
| Workflow | flowerMD | Reusable molecular dynamics workflow recipes. | 130 | [flowerMD docs](https://flowermd.readthedocs.io/en/latest/) |
| Workflow / provenance | AiiDA | Execute workflows and record data provenance. | 131 | [AiiDA docs](https://aiida.net/docs/) |
| Workflow / data | signac | Index simulation jobs and their parameters and results. | 132 | [signac docs](https://signac.readthedocs.io/) |

## Using this map for miscibility studies

1. **Define the target.** Distinguish equilibrium miscibility, polymer–solvent solubility, and dispersion. Record composition, temperature, pressure, molecular weight distribution, and processing history.
2. **Build and parameterize.** Confirm polymer architecture and force field coverage for *every* component. Preserve the exact structures, parameters, versions, and random seeds.
3. **Equilibrate and check convergence.** Track density, energy, chain dimensions, and the descriptor to be reported. In mixtures, also test whether apparent homogeneity is merely a slow, metastable state.
4. **Analyze and preserve provenance.** Keep trajectory analysis and label generation reproducible. The review mentions MDAnalysis, freud, SolvationAnalysis, and OpenMM as complementary analysis or engine tools outside Figure 2.

The review reports gaps in standardized, native solubility-parameter extraction and multicomponent equilibration checks across workflows. RadonPy currently documents a solubility-parameter preset, so check the capability of the particular version being used; its existence does not establish a shared, validated protocol across packages.
