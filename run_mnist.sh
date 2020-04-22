#!/bin/bash
make
make clean

# ------------------------------------------------------------------------------
#  Parameters
# ------------------------------------------------------------------------------
dname=Mnist
n=60000
qn=100
d=50
leaf=4000
L=30
M=10
c=2.0
dPath=./data/${dname}/${dname}

# ------------------------------------------------------------------------------
#  Running Scripts
# ------------------------------------------------------------------------------
p_list=(2.0) 
z_list=(0.0)
# p_list=(0.5 1.0 2.0)
# z_list=(1.0 0.0 0.0)
length=`expr ${#p_list[*]} - 1`

for j in $(seq 0 ${length})
do 
    p=${p_list[j]}
    z=${z_list[j]}
    oPath=./results${c}/${dname}/L${p}/

    # --------------------------------------------------------------------------
    #  Ground Truth
    # --------------------------------------------------------------------------
    ./qalsh -alg 0 -n ${n} -qn ${qn} -d ${d} -p ${p} -ds ${dPath}.ds \
        -qs ${dPath}.q -ts ${dPath}.gt${p}

    # --------------------------------------------------------------------------
    #  QALSH_Plus
    # --------------------------------------------------------------------------
    ./qalsh -alg 1 -n ${n} -qn ${qn} -d ${d} -leaf ${leaf} -L ${L} -M ${M} \
        -p ${p} -z ${z} -c ${c} -ds ${dPath}.ds -qs ${dPath}.q \
        -ts ${dPath}.gt${p} -op ${oPath}

    # --------------------------------------------------------------------------
    #  QALSH
    # --------------------------------------------------------------------------
    ./qalsh -alg 2 -n ${n} -qn ${qn} -d ${d} -p ${p} -z ${z} -c ${c} \
        -ds ${dPath}.ds -qs ${dPath}.q -ts ${dPath}.gt${p} -op ${oPath}

    # --------------------------------------------------------------------------
    #  Linear Scan
    # --------------------------------------------------------------------------
    ./qalsh -alg 3 -n ${n} -qn ${qn} -d ${d} -p ${p} -ds ${dPath}.ds \
        -qs ${dPath}.q -ts ${dPath}.gt${p} -op ${oPath}
done
