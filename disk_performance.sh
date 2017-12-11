#!/bin/bash
work_dir=$1
work_dir=$work_dir/disk_performance

if [ ! -d $work_dir ]; then
  mkdir $work_dir
fi

apt-get -y install lshw fio
# list hardware
lshw -numeric > $work_dir/hardware_list

# 300G
size=300G
#fio
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-512.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-64k.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-1m.txt$size

# 500G
size=500G
#fio
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-512.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-64k.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-1m.txt$size

# 1000G
size=1000G
#fio
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-512.txt$size
fio --bs=512 --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-512.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-64k.txt$size
fio --bs=64k --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-64k.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randread --rw=randread --filename=fio-test.file --output=$work_dir/$(hostname)-fio-r-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randwrite --rw=randwrite --filename=fio-test.file --output=$work_dir/$(hostname)-fio-w-1m.txt$size
fio --bs=1m --ioengine=libaio --userspace_reap --time_based --runtime=120 --group_reporting --buffered=0 --direct=1 --randrepeat=0 --norandommap --ramp_time=6 --iodepth=16 --numjobs=16 --size=$size --directory=$work_dir --name=randmixed --rwmixwrite=20 --rw=randrw --filename=fio-test.file --output=$work_dir/$(hostname)-fio-rw-1m.txt$size
# dd
#dd if=/dev/zero of=$work_dir/test.dbf bs=8k count=300000 oflag=direct &>$work_dir/$(hostname)-dd-w-8k.txt
#dd if=/dev/zero of=$work_dir/test.dbf bs=64k count=30000 oflag=direct &>$work_dir/$(hostname)-dd-w-64k.txt
#dd if=/dev/zero of=$work_dir/test.dbf bs=1M count=3000 oflag=direct &>$work_dir/$(hostname)-dd-w-1M.txt
