sudo apt-get --yes update

sudo apt-get --yes upgrade

sudo apt-get --yes dist-upgrade

sudo apt-get --yes install \
  build-essential          \
  curl                     \
  default-jdk              \
  gfortran                 \
  git                      \
  libblas-dev              \
  libbz2-dev               \
  libfreetype6-dev         \
  libhdf5-serial-dev       \
  liblapack-dev            \
  libncurses5-dev          \
  libpng-dev               \
  libreadline-dev          \
  libsqlite3-dev           \
  libssl-dev               \
  llvm                     \
  make                     \
  pkg-config               \
  python-wxgtk2.8          \
  wget                     \
  zlib1g-dev

sudo apt-get --yes autoremove

if ! cd $HOME/.pyenv; then
  git clone git://github.com/yyuu/pyenv.git $HOME/.pyenv
fi

if ! cd $HOME/.pyenv/plugins/pyenv-virtualenv; then
  git clone https://github.com/yyuu/pyenv-virtualenv.git \
    $HOME/.pyenv/plugins/pyenv-virtualenv
fi

grep -q -F 'export PATH="$HOME/.pyenv/bin:$PATH"' $HOME/.bashrc ||
  echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> $HOME/.bashrc

grep -q -F 'eval "$(pyenv init -)"' $HOME/.bashrc ||
  echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc

grep -q -F 'eval "$(pyenv virtualenv-init -)"' $HOME/.bashrc ||
  echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.bashrc

export PATH="$HOME/.pyenv/bin:$PATH"

eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

if ! cd $HOME/.pyenv/versions/2.7.10; then
  pyenv install 2.7.10
fi

pyenv global 2.7.10

if ! cd $HOME/.pyenv/versions/CellProfiler-2.7.10; then
  pyenv virtualenv 2.7.10 CellProfiler-2.7.10
fi

pyenv activate CellProfiler-2.7.10

pip install --upgrade pip

pip install numpy

pip install h5py libtiff matplotlib python-bioformats scipy zmq
