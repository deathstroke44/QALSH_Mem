#!/bin/bash

# ------------------------------------------------------------------------------
#  Parameters ('dtype' has 4 options: uint8, uint16, int32, float32)
# ------------------------------------------------------------------------------

B=4096
c=2.0
leaf=5000
L=30
M=7
dtype=float32
p=2.0
z=0.0
log=log6

dname=audio
n=53387
qn=200
d=192
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=imageNet
n=2340373
qn=200
d=150
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=notre
n=332668
qn=200
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=ukbench
n=1097907
qn=200
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=cifar
n=50000
qn=200
d=512
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=enron
n=94987
qn=200
d=1369
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=millionSong
n=992272
qn=200
d=420
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=MNIST
n=69000
qn=200
d=784
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=nuswide
n=268643
qn=200
d=500
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=sun
n=79106
qn=200
d=512
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=deep
n=1000000
qn=200
d=256
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}

dname=trevi
n=99900
qn=200
d=4096
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/




of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}
