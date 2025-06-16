echo "🧠 Cloning Fooocus..."
cd ~
git clone https://github.com/lllyasviel/Fooocus.git
cd Fooocus

echo "🐍 Setting up virtual environment..."
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "🚀 Running Fooocus once to create model folders..."
python launch.py --exit

echo "⬇️ Downloading models..."

# Realistic Vision
wget -O models/checkpoints/realisticVisionV60B1_v51HyperVAE.safetensors https://civitai.com/api/download/models/132713

# SDXL 1.0 Realistic Female LoRA
wget -O models/loras/sdxl1.0_realastic_female_lora.safetensors https://civitai.com/api/download/models/131511

# SDXL Refiner 1.0
wget -O models/refiners/stable-diffusion-xl-refiner-1.0.safetensors https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors

echo "✅ Fooocus setup complete. To launch Fooocus again:"
echo "----------------------------------------------------"
echo "cd ~/Fooocus"
echo "source venv/bin/activate"
echo "python launch.py"
echo "Then open: http://localhost:7865 (or use SSH tunnel)"
echo "----------------------------------------------------"
