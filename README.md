# README for Research Setup

## 1. Python `requirements.txt`
Create a file named `requirements.txt` in your repository with the following content:

```text
# Chemical and Data Retrieval
chembl_webresource_client

# Machine Learning and Bioinformatics
deepchem
prody
scikit-learn
pandas
numpy

# Molecular Processing and Docking Preparation
meeko
gemmi

# Visualization
py3Dmol
```

## 2. System Dependencies (`setup.sh`)
Since `openbabel` and `autodock-vina` are system-level tools (installed via `apt-get`), they cannot be included in the `requirements.txt`. Instead, create a shell script `setup.sh` to automate the environment setup:

```bash
#!/bin/bash

# Update and install system-level bioinformatics tools
sudo apt-get update -qq
sudo apt-get install -y openbabel autodock-vina

# Install Python dependencies
pip install -r requirements.txt

echo "Environment setup complete."
```

## 3. Setup Instructions

To replicate the environment for this study, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Install System Dependencies (Linux/Ubuntu):**
   This project requires OpenBabel and AutoDock Vina:
   ```bash
   sudo apt-get update
   sudo apt-get install -y openbabel autodock-vina
   ```

3. **Install Python Libraries:**
   ```bash
   pip install -r requirements.txt
   ```

## Summary of Tools and Their Uses:
* **chembl_webresource_client**: Used in `0. Dataset collection`.
* **deepchem / scikit-learn**: Used in `1. Machine learning part`.
* **meeko / gemmi / openbabel**: Essential for `2. Docking` and `3. Redocking` to prepare ligands and proteins.
* **autodock-vina**: The engine that performs the actual docking.
* **prody / py3Dmol**: Used for analyzing and visualizing the docking results.
* **ADMET**: Typically uses DeepChem or Scikit-Learn models to predict toxicity.
