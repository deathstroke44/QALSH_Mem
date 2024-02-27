#!/bin/bash

# ------------------------------------------------------------------------------
#  Parameters ('dtype' has 4 options: uint8, uint16, int32, float32)
# ------------------------------------------------------------------------------

cd ../methods/


B=4096
c=1.25
dtype=float32
p=2.0
z=0.0
log=log22



dname=bigann
n=1000000
qn=100
d=128
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}




# dname=glove
# n=1192514
# qn=200
# d=100
# pf=/data/kabir/similarity-search/dataset/${dname}
# df=/data/kabir/similarity-search/dataset/${dname}/



# of=../results/${dname}/c=${c}_p=${p}/

# ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

# ./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
# -dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=lastfm
n=292385
qn=100
d=65
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=lastfm
n=10677
qn=1000
d=150
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=movielens
n=10677
qn=1000
d=150
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=netflix
n=17770
qn=1000
d=300
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=nytimes
n=290000
qn=100
d=256
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}



dname=yahoomusic
n=136736
qn=100
d=300
pf=/data/kabir/similarity-search/dataset/${dname}
df=/data/kabir/similarity-search/dataset/${dname}/



of=../results/${dname}/c=${c}_p=${p}/

./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
-dt ${dtype} -pf ${pf} -of ${of} -dname ${log}