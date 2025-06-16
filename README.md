# PD-1 Binding Pocket Analysis

This repository contains the scripts and analysis files related to the detection and molecular dynamics (MD) simulation of binding pockets in the PD-1 (Programmed Cell Death Protein 1) structure. The study evaluates the druggability of identified pockets using structural descriptors and dynamic behavior from a 100 ns simulation trajectory.

## 🧬 Project Overview

**Objective:**  
To identify and evaluate potential druggable pockets in the PD-1 immune checkpoint protein using Fpocket and GROMACS-based molecular dynamics simulations.

**Key Highlights:**
- Fpocket was used to detect potential binding pockets from the 2M2D PDB structure.
- MD simulations were performed using GROMACS 2024 with the OPLS-AA/L force field.
- Stability and druggability of pockets were evaluated using RMSD, RMSF, and SASA.
- Pocket 3 emerged as the most promising target for drug design based on its rigidity and induced-fit behavior.

## 📁 Repository Structure
```
PD-1-Binding-Pocket-Analysis/
├── data/                  # Raw output from Fpocket
├── md_files/              # GROMACS simulation files
├── scripts/               # Python scripts for analysis and plotting
├── figures/               # Generated plots (RMSD, RMSF, SASA, etc.)
└── README.md              # Project documentation
```
## ⚙️ Tools & Technologies

- **Fpocket** – Pocket detection: [Fpocket GitHub](https://github.com/Discngine/fpocket)
- **GROMACS 2024** – Molecular dynamics simulations: [GROMACS Website](https://www.gromacs.org)
- **Python (pandas, matplotlib)** – Data parsing, analysis, and visualization

## 📊 Key Results

- **Pocket 1** has the highest volume and polarity but showed significant conformational instability.
- **Pocket 3** maintained structural rigidity with low RMSD/RMSF values and compact SASA profiles.
- Dynamic analysis revealed Pocket 3 undergoes conformational "breathing," indicating induced-fit potential.

## 📂 How to Use

1. **Pocket Detection**:
   - Run Fpocket on the `2M2D.pdb` file:  
     ```bash
     fpocket -f 2M2D.pdb
     ```

2. **Simulation Setup**:
   - Prepare GROMACS input using `gmx pdb2gmx`, `editconf`, and `solvate`.
   - Neutralize the system and generate `topol.top`.

3. **Run Molecular Dynamics**:
   - Energy minimization, NVT, NPT equilibration, and 100 ns production run.

4. **Analysis**:
   - Use Python scripts in the `scripts/` folder to extract RMSD, RMSF, and SASA.
   - Generate plots using:
     ```bash
     python scripts/RMSD_RMSF_SASA.ipynb
     python scripts/Plotting Parameter over time.ipynb
     ```

## 🧾 Citation

If you use this repository or dataset in your work, please cite:
Panda, S. (2025) *PD-1 Binding Pocket Analysis*. GitHub repository. Available at: https://github.com/saspanda19/PD-1-Binding-Pocket-Analysis

## 📬 Contact

For questions or collaborations, feel free to reach out to:  
📧 saswatipanda099@gmail.com  
🔗 [GitHub Profile](https://github.com/saspanda19)

---

**License**: MIT  

