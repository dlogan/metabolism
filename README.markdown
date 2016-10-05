# metabolism

## Usage

Install Virtualbox (https://www.virtualbox.org/wiki/Downloads)

Then:
```sh
vagrant up
```

Clone CP and CPA:
```sh
git clone https://github.com/CellProfiler/CellProfiler
git clone https://github.com/CellProfiler/CellProfiler-Analyst
```

SSH into virtual machine
```sh
vagrant ssh
```

Start CellProfiler Analyst
```sh
python /Vagrant/CellProfiler-Analyst/CellProfiler-Analyst.py
```
