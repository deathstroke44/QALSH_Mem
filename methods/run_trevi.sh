#!/bin/bash
make clean
make -j

# ------------------------------------------------------------------------------
#  Parameters
# ------------------------------------------------------------------------------
n=100800
qn=100
d=4096
c=2.0
dtype=uint8
dname=Trevi
pf=../data/${dname}/${dname}

# ------------------------------------------------------------------------------
#  Running Scripts
# ------------------------------------------------------------------------------
p_list=(0.5 1.0 2.0) 
z_list=(1.0 0.0 0.0)
length=`expr ${#p_list[*]} - 1`

for j in $(seq 0 ${length})
do
  p=${p_list[j]}
  z=${z_list[j]}
  of=../results/${dname}/c=${c}_p=${p}/

  # ----------------------------------------------------------------------------
  #  Ground Truth
  # ----------------------------------------------------------------------------
  ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf}

  # ----------------------------------------------------------------------------
  #  QALSH
  # ----------------------------------------------------------------------------
  ./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
    -dt ${dtype} -pf ${pf} -of ${of}

  # ----------------------------------------------------------------------------
  #  Linear Scan
  # ----------------------------------------------------------------------------
  ./qalsh -alg 3 -n ${n} -qn ${qn} -d ${d} -p ${p} -dt ${dtype} -pf ${pf} \
    -of ${of}
done
