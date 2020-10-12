#!/bin/tcsh -f
# THIS SHOULD SOURCE THE APPROPRIATE FILES TO SET UP THE ENVIRONMENT AND EXCECUTE THE PYTHON SCRIPT
echo 'sourcing the setup script!'
source $GPL_TASKROOT/config/DEV/setup_gw_giacomvst.csh
echo 'About to run merge_results.py... on FIXEDINTERVAL'
echo python $GPL_TASKROOT/fermi_gw_toolkit/fermi_gw_toolkit/merge_results.py $TRIGGERNAME --txtdir ${OUTPUT_FILE_PATH}/FIXEDINTERVAL --keyword res
python $GPL_TASKROOT/fermi_gw_toolkit/fermi_gw_toolkit/merge_results.py $TRIGGERNAME --txtdir ${OUTPUT_FILE_PATH}/FIXEDINTERVAL --keyword res
chmod -R a+w ${OUTPUT_FILE_PATH}/FIXEDINTERVAL
