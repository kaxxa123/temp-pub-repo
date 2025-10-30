
```BASH
sudo apt update
sudo apt install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev wget

cd ~
wget https://www.python.org/ftp/python/3.9.18/Python-3.9.18.tgz

tar xzf Python-3.9.18.tgz
cd Python-3.9.18

sudo ./configure --enable-optimizations

# Build (use -j4 for speed on RPi 5)
sudo make -j4

# Install using altinstall
sudo make altinstall

python3.9 -V
python3 -V


python3.9 -m venv venv_3.9
source venv_3.9/bin/activate
python -V
```