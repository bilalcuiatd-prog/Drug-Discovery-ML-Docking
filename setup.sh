#!/bin/bash

# Update and install system-level bioinformatics tools
sudo apt-get update -qq
sudo apt-get install -y openbabel autodock-vina

# Install Python dependencies
pip install -r requirements.txt

echo "Environment setup complete."
