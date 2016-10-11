sudo apt-get --yes update

sudo apt-get --yes upgrade

sudo apt-get --yes dist-upgrade

sudo apt-get --yes install \
  build-essential          \
  curl                     \
  default-jdk              \
  git                      \
  libbz2-dev               \
  libmysqlclient-dev       \
  libncurses5-dev          \
  libncursesw5-dev         \
  libreadline-dev          \
  libsqlite3-dev           \
  libssl-dev               \
  llvm                     \
  make                     \
  wget                     \
  xz-utils                 \
  zlib1g-dev

if ! cd $HOME/.pyenv; then
  git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
fi

if ! /usr/local/bin/python --version; then
  sudo $HOME/.pyenv/plugins/python-build/bin/python-build 2.7.12 /usr/local/
fi

sudo -H pip install --upgrade \
  cython                      \
  h5py                        \
  matplotlib                  \
  pip                         \
  pyzmq                       \
  scipy                       \
  wheel

if ! cd $HOME/CellProfiler; then
  git clone https://github.com/CellProfiler/CellProfiler.git $HOME/CellProfiler
fi

sudo -H pip install --editable $HOME/CellProfiler
