#!/bin/bash
make clean
make -j

# ------------------------------------------------------------------------------
#  Parameters ('dtype' has 4 options: uint8, uint16, int32, float32)
# ------------------------------------------------------------------------------
n=31059
qn=100
d=5408
c=2.0
dtype=uint16
dname=P53
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
