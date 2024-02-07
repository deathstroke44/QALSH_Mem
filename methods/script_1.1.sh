#!/bin/bash

# ------------------------------------------------------------------------------
#  Parameters ('dtype' has 4 options: uint8, uint16, int32, float32)
# ------------------------------------------------------------------------------

B=4096
c=2.0
leaf=20000
L=30
M=7
dtype=float32
p=2.0
z=0.0


dname=notre
n=332668
qn=200
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log1


of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}