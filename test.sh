if [[ ! -f os.iso ]]; then
wget https://builds.vinix-os.org/repos/files/vinix/latest/vinix.iso
mv vinix.iso os.iso
fi
qemu-system-x86_64 -cpu qemu64,level=11,+rdtscp -M q35,smm=off -m 2G -smp 4 -cdrom os.iso -serial stdio
