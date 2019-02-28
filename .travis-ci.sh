bash .travis-ocaml.sh

export OPAMYES=1
eval $(opam config env)

opam repo add mirage-dev .
opam update -u

opam depext -uiy mirage

git clone -b releng-3.5.0 https://github.com/hannesm/mirage-skeleton.git
cd mirage-skeleton
make MODE=${MODE}

