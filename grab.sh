dest=bitstream
old_base=top_level_wrapper
new_base=u55c_loopback

mkdir $dest 2>/dev/null

bit=project.runs/impl_1/${old_base}.bit 
ltx=project.runs/impl_1/${old_base}.ltx
bin=project.runs/impl_1/${old_base}.bin

if [ ! -f $bit ]; then
    echo "${bit} doesn't appear to exist"
    exit 1
fi

rm -rf ${dest}/${new_base}.bit
rm -rf ${dest}/${new_base}.bin
rm -rf ${dest}/${new_base}.ltx

                cp $bit ${dest}/${new_base}.bit
test -f $bin && cp $bin ${dest}/${new_base}.bin 
test -f $ltx && cp $ltx ${dest}/${new_base}.ltx

