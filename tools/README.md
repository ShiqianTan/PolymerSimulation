# Tools and Workflows

Use this page to choose a starting point. The [tool catalog](catalog.md) lists all 78 entries from the 2026 matrix by workflow stage; the [detailed reference](reference.md) has practical notes on force fields, engines, selected workflows, and literature.

## Follow the workflow

| Stage | What to look for | Catalog section |
| --- | --- | --- |
| Describe polymer chemistry and data | Stochastic representations, repeat-unit notation, identifiers, and polymer datasets | [Representation, identifiers, and data](catalog.md#representation-identifiers-and-data) |
| Predict or generate candidates | Polymer property models, embeddings, virtual libraries, and generative methods | [Polymer informatics and generation](catalog.md#polymer-informatics-property-prediction-and-generation) |
| Build a molecular model | Polymer-aware chain, melt, electrolyte, branched, or network builders; general packing/assembly tools | [Structure builders](catalog.md#polymer-structure-builders-and-molecular-assembly) |
| Assign parameters and exchange topologies | Polymer-oriented parameterization plus general force-field and file-interoperability infrastructure | [Parameterization and interoperability](catalog.md#force-field-parameterization-and-topology-interoperability) |
| Reduce resolution | Mapping and bottom-up or automated coarse-graining tools | [Coarse graining](catalog.md#coarse-graining-tools) |
| Run molecular simulation | General MD engines and specialized automated polymer workflows | [Simulation engines](catalog.md#simulation-engines) · [Automated workflows](catalog.md#automated-simulation-and-design-workflows) |
| Analyze structures and trajectories | Trajectory libraries, particle analysis, visualization, and workflow/data management | [Analysis and visualization](catalog.md#trajectory-analysis-and-visualization) · [Workflow management](catalog.md#workflow-and-data-management) |
| Use electronic-structure methods | DFT, tight-binding, and quantum-chemistry packages used for calculations or reference data | [Quantum tools](catalog.md#quantum-and-electronic-structure-tools) |
| Explore ML potentials and agents | Polymer MLFF work and emerging agent-assisted simulation/design systems | [MLFFs and agents](catalog.md#machine-learned-force-fields-and-agentic-systems) |

## Quick selection checks

1. **Start from the target material and property.** Identify whether the model is a homopolymer, copolymer, branched/cross-linked network, or electrolyte, and whether the target is structural, thermodynamic, transport, or mechanical.
2. **Separate the roles.** A builder creates a structure; a force field supplies interaction parameters; an engine integrates the equations of motion; a workflow may connect some of these steps. They are not interchangeable.
3. **Check representation and validation.** Confirm atomistic, united-atom, or coarse-grained resolution; chemistry and topology coverage; parameter provenance; and validation against relevant measurements or reference calculations.
4. **Check reproducibility before adopting a workflow.** Record the software version or commit, parameter set, input structure and mapping, dependencies, and simulation protocol. Review maintenance and licensing on the linked project page.

## Scope and evidence

The catalog includes both polymer-native tools and general-purpose infrastructure that materially supports polymer modeling. Its **Core / Important / Supporting** labels are the supplied matrix's navigation priorities, not independent rankings. **Evidence A** denotes a dedicated peer-reviewed paper plus a public project/code or documented tool; **B** denotes a documented project; **C** denotes general supporting infrastructure. These labels do not replace validation for a specific polymer chemistry.

For detailed force-field and model-representation notes, selected workflow comparisons, MLFF publications, and agent systems, continue to the [detailed reference](reference.md). For foundational and topic-based reading, see the [papers guide](../papers/README.md).
