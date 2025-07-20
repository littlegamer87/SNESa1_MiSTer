#!/bin/bash

# Delete unwanted files
find . -type f \( -name "*.bak" -o -name "*.orig" -o -name "*.rej" -o -name "*~" \) -delete
find . -type f \( -name "*.qws" -o -name "*.ppf" -o -name "*.ddb" -o -name "*.csv" -o -name "*.cmp" \
    -o -name "*.sip" -o -name "*.spd" -o -name "*.bsf" -o -name "*.f" -o -name "*.sopcinfo" -o -name "*.xml" \) -delete
rm -f build_id.v c5_pin_model_dump.txt PLLJ_PLLSPE_INFO.txt *.cdf

# Remove directories if they exist
rm -rf db incremental_db output_files simulation greybox_tmp hc_output .qsys_edit hps_isw_handoff
rm -rf sys/.qsys_edit sys/vip

# Remove *_sim directories inside ./sys
if [ -d sys ]; then
  find sys -maxdepth 1 -type d -name "*_sim" -exec rm -rf {} +
fi

# Remove *_sim directories in root folder
find . -maxdepth 1 -type d -name "*_sim" -exec rm -rf {} +

echo "Clean complete."
