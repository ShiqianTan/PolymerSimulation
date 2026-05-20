# Papers

Use this folder for literature notes, reading lists, citation collections, and short paper summaries related to polymer simulation.

## High-Citation and Classic Reading List

Citation counts are approximate screening signals, because Google Scholar, ACS, Scopus, Crossref, OUCI, and other databases use different coverage. Counts below were checked from publicly visible pages on 2026-05-20.

| Year | Paper | Why it matters | Citation signal |
| --- | --- | --- | --- |
| 1985 | [Theodorou & Suter, *Detailed molecular structure of a vinyl polymer glass*](https://doi.org/10.1021/ma00149a018) | Early atomistic modeling of amorphous polymer glass structure; useful for packing, free volume, and glassy polymer model-building ideas. | ACS: cited by ~823 publications. |
| 1990 | [Kremer & Grest, *Dynamics of entangled linear polymer melts: A molecular-dynamics simulation*](https://doi.org/10.1063/1.458541) | The foundational bead-spring / Kremer-Grest polymer melt model; essential for entanglement, Rouse-to-reptation crossover, and generic polymer MD. | OUCI: ~3,572 citations. |
| 1990 | [Mayo, Olafson & Goddard, *DREIDING: A generic force field for molecular simulations*](https://doi.org/10.1021/j100389a010) | General-purpose force field often encountered in polymer, organic, and materials simulations. Not polymer-specific, but important background for force-field choices. | ACS: cited by ~5,948 publications. |
| 1997 | [Paul, Smith & Yoon, *Static and Dynamic Properties of a n-C100H202 Melt from Molecular Dynamics Simulations*](https://doi.org/10.1021/ma971184d) | Representative atomistic/united-atom polyethylene melt simulation; good example of comparing MD chain statistics and dynamics with experiment. | Classic atomistic PE melt paper. |
| 1998 | [Sun, *COMPASS: An Ab Initio Force-Field Optimized for Condensed-Phase Applications*](https://doi.org/10.1021/jp980939v) | Widely used all-atom force field for condensed-phase simulations of organic molecules and polymers; common in Materials Studio/Forcite workflows. | CoLab: ~5,474 citations. |
| 1998 | [Bennemann, Paul, Binder & Dunweg, *Molecular-dynamics simulations of the thermal glass transition in polymer melts*](https://doi.org/10.1103/PhysRevE.57.843) | Classic dense polymer melt glass-transition MD study; useful for alpha relaxation, cooling protocols, and mode-coupling-theory comparisons. | Classic glass-transition simulation paper. |
| 2000 | [Borodin & Smith, *Molecular Dynamics Simulations of Poly(ethylene oxide)/LiI Melts. 2. Dynamic Properties*](https://doi.org/10.1021/ma991429h) | Important polymer-electrolyte MD paper; useful for ion transport, segmental dynamics, and PEO-salt coordination. | ACS: cited by ~115 publications. |
| 2001 | [Akkermans & Briels, *A structure-based coarse-grained model for polymer melts*](https://doi.org/10.1063/1.1330744) | A key bottom-up coarse-graining paper; highlights structure reproduction versus thermodynamic consistency. | University of Twente/Scopus: ~125 citations. |
| 2002 | [Muller-Plathe, *Coarse-graining in polymer simulation: From the atomistic to the mesoscopic scale and back*](https://pure.mpg.de/pubman/item/item_1419906) | Review-style entry point for systematic polymer coarse graining and backmapping. | Classic coarse-graining review. |
| 2003 | [Reith, Putz & Muller-Plathe, *Deriving effective mesoscale potentials from atomistic simulations*](https://doi.org/10.1002/jcc.10307) | Canonical iterative Boltzmann inversion style reference for deriving coarse-grained potentials from atomistic data. | Widely used coarse-graining method paper. |
| 2003 | [Smith et al., *A molecular dynamics simulation study of nanoparticle interactions in a model polymer-nanoparticle composite*](https://doi.org/10.1016/S0266-3538(03)00061-7) | Early MD study of polymer-mediated nanoparticle interactions in a polymer matrix; useful for polymer nanocomposites. | ScienceDirect: cited by ~262 publications. |
| 2003 | [Starr, Douglas & Glotzer, *Origin of particle clustering in a simulated polymer nanocomposite and its impact on rheology*](https://doi.org/10.1063/1.1580099) | Classic simulation paper on nanoparticle clustering, dispersion, shear, and rheology in polymer nanocomposites. | NIST-hosted publication; widely cited in PNC literature. |
| 2004 | [Everaers et al., *Rheology and Microscopic Topology of Entangled Polymeric Liquids*](https://doi.org/10.1126/science.1091215) | Primitive-path analysis foundation linking microscopic entanglement topology to rheology and plateau modulus. | Seminal Science paper. |
| 2004 | [Faller, *Automatic coarse graining of polymers*](https://doi.org/10.1016/j.polymer.2003.11.053) | Clear review of automatic mapping and potential-optimization schemes for polymer coarse graining. | ScienceDirect: cited by ~102 publications. |
| 2004 | [Paul & Smith, *Structure and dynamics of amorphous polymers: computer simulations compared to experiment and theory*](https://doi.org/10.1088/0034-4885/67/7/R02) | Broad review connecting atomistic and coarse-grained simulations with amorphous polymer experiments. | Broad review paper. |
| 2006 | [Harmandaris et al., *Hierarchical Modeling of Polystyrene: From Atomistic to Coarse-Grained Simulations*](https://doi.org/10.1021/ma0606399) | Practical multiscale workflow for polystyrene: atomistic model, coarse-graining, time mapping, and backmapping. | ACS: cited by ~334 publications. |
| 2014 | [Liu et al., *Molecular dynamics simulation of dispersion and aggregation kinetics of nanorods in polymer nanocomposites*](https://doi.org/10.1016/j.polymer.2014.01.042) | Useful example for rod-like fillers, dispersion/aggregation kinetics, and CG polymer nanocomposite analysis. | ScienceDirect: cited by ~45 publications. |
| 2017 | [Vogiatzis & Theodorou, *Multiscale Molecular Simulations of Polymer-Matrix Nanocomposites*](https://doi.org/10.1007/s11831-016-9207-y) | Open-access review of polymer-matrix nanocomposite simulations across length scales. | Springer: ~69 citations. |
| 2023 | [Shi, Qian & Lu, *Coarse-grained molecular dynamics simulation of polymers: Structures and dynamics*](https://doi.org/10.1002/wcms.1683) | Recent high-level review for CG polymer MD, including structure, dynamics, and chemically specific coarse-grained models. | Recent WIREs review. |

## Suggested Reading Path

1. Start with the generic melt baseline: Kremer & Grest 1990.
2. Add atomistic polymer examples: Theodorou & Suter 1985; Paul, Smith & Yoon 1997.
3. Learn force-field context: DREIDING 1990; COMPASS 1998.
4. Study glassy dynamics: Bennemann et al. 1998; Paul & Smith 2004.
5. Learn coarse graining: Akkermans & Briels 2001; Muller-Plathe 2002; Reith et al. 2003; Faller 2004; Harmandaris et al. 2006; Shi et al. 2023.
6. Study entanglement topology and rheology: Everaers et al. 2004.
7. Move to applications: Borodin & Smith 2000 for polymer electrolytes; Smith et al. 2003 and Starr et al. 2003 for polymer nanocomposites.

## Tags to Use Later

- polymer-melt
- kremer-grest
- atomistic-md
- united-atom
- force-field
- coarse-graining
- backmapping
- glass-transition
- entanglement
- rheology
- polymer-electrolyte
- polymer-nanocomposite

## To Expand

- Add BibTeX entries in papers/bib/.
- Add one Markdown note per paper in papers/notes/.
- Add a separate list for polymer crystallization, cross-linked polymers/epoxy, polymer membranes, and LAMMPS/RadonPy-specific workflows.
