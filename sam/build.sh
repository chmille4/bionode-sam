#!/bin/bash
VERSION=0.1.19

function build() {
  cd $1
  git checkout $VERSION
  make
  cd ..
}

cd sam

#git clone -b master https://github.com/samtools/htslib.git
#build htslib

git clone -b master https://github.com/samtools/samtools.git
build samtools

#git clone -b master https://github.com/samtools/bcftools.git
#build bcftools

cd ../../../bin/
ln -s ../node_modules/bionode-sam/sam/samtools/samtools samtools
