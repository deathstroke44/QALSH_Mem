#!/bin/bash

# ------------------------------------------------------------------------------
#  Parameters ('dtype' has 4 options: uint8, uint16, int32, float32)
# ------------------------------------------------------------------------------

B=4096
c=2.0
dtype=float32
p=2.0
z=0.0

dname=uqv
n=1000000
qn=10000
d=256
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=random
n=1000000
qn=200
d=100
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=astro1m
n=1000000
qn=100
d=256
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=seismic1m
n=1000000
qn=100
d=256
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=sald1m
n=1000000
qn=100
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=astro1m
n=1000000
qn=100
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=space1V
n=1000000
qn=100
d=100
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=text-to-image
n=1000000
qn=100
d=200
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=gist
n=1000000
qn=1000
d=960
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




dname=sift
n=1000000
qn=10000
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/
log=log9



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}
