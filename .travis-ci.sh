bash .travis-ocaml.sh

export OPAMYES=1
eval $(opam config env)

opam repo add mirage-dev .
opam update -u

opam depext -uiy mirage

git clone https://github.com/mirage/mirage-skeleton.git
cd mirage-skeleton
make MODE=${MODE}

