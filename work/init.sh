mkdir -p wrklib
echo -e 'define wrk ./wrklib\ninclude $CDS_INST_DIR/tools/inca/files/cds.lib' > cds.lib
echo define work wrk > hdl.var

