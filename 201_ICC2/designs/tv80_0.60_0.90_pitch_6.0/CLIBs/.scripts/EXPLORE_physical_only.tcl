set NDM_LIBS {}
set FRAME_LIBS {/home/hot_data/DB/snps14/stdcell_rvt/ndm/saed14rvt_frame_only.ndm}
set LEF_FILES {}
set DB_FILES {}
set TECH_FILE "/home/hot_data/DB/snps14/tech/milkyway/saed14nm_1p9m_mw.tf"

set_app_options -name lib.workspace.create_cached_lib -value true
set_app_options -name lib.workspace.include_design_filters -value {SAEDRVT14_FSDN_V2_0P5}
#suppress_messages

set_app_options -name lib.workspace.allow_read_aggregate_lib -value true
create_workspace EXPLORE_physical_only -flow physical_only -scale_factor 10000
foreach frame $FRAME_LIBS {
  read_ndm $frame
}
process_workspaces -check_options {-allow_missing} -force -directory CLIBs -output EXPLORE_physical_only.ndm
