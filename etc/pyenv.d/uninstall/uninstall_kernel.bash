env_name=$DEFINITION
jupyter_dir=$(jupyter --data-dir)
kernel_name="${jupyter_dir}/kernels/ipython-${env_name}"

if [ -e ${kernel_name} ]; then
    echo "Uninstalling kernel ${kernel_name}"
    rm -rf "${kernel_name}";
fi
