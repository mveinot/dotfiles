if [ `uname` == 'Darwin' ]; then
    export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
    export VAGRANT_VMWARE_CLONE_DIRECTORY=${HOME}/.vagrant.d/projects

    # keep vagrant VMs in standard place to make Time Machine less cranky
    if [ ! -d ${VAGRANT_VMWARE_CLONE_DIRECTORY} ]; then
        mkdir -p ${VAGRANT_VMWARE_CLONE_DIRECTORY}
    fi
fi


