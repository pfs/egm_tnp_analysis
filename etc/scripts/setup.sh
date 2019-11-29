#!bin/bash 

if [[ `uname -n` == *"lxplus"* ]]; then 
## install gcc 4.9
    optVer=x86_64-slc6-gcc49-opt
    optVer=x86_64-slc6-gcc48-opt

## install modern version of ROOT
    LCG=/cvmfs/sft.cern.ch/lcg/
    ROOTSYS=$LCG/app/releases/ROOT/6.06.06/$optVer/root/
    . $LCG/external/gcc/4.8.4/$optVer/setup.sh
    . $ROOTSYS/bin/thisroot.sh

## add python lib
    . /opt/rh/python27/enable
    export LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64/:$LD_LIBRARY_PATH
fi

export PYTHONPATH=.:$PYTHONPATH
