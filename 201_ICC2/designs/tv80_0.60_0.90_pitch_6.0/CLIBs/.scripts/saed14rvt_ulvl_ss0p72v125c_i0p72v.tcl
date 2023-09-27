set NDM_LIBS {}
set FRAME_LIBS {/home/hot_data/DB/snps14/stdcell_rvt/ndm/saed14rvt_frame_only.ndm}
set LEF_FILES {}
set DB_FILES {/home/hot_data/DB/snps14/lib/stdcell_rvt/db_nldm/saed14rvt_ulvl_ss0p72v125c_i0p72v.db}
set TECH_FILE "/home/hot_data/DB/snps14/tech/milkyway/saed14nm_1p9m_mw.tf"

set_app_options -name lib.workspace.create_cached_lib -value true
#suppress_messages

set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
create_workspace saed14rvt_ulvl_ss0p72v125c_i0p72v -scale_factor 10000
foreach frame $FRAME_LIBS {
  read_ndm $frame
}
read_db $DB_FILES
process_workspaces -check_options {-allow_missing} -force -directory CLIBs -output saed14rvt_ulvl_ss0p72v125c_i0p72v.ndm
