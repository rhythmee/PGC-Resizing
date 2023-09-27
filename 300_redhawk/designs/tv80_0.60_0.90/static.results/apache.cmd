setup analysis_mode static
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:29 2023 (ok)

import gsr /home/ischo/generative-IR/experiments/300_redhawk/designs/tv80_0.60_0.90/static_tv80.gsr
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:29 2023 (ok)

gsr set FREQUENCY 0.8333333333333334G
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:29 2023 (ok)

gsr set CELL_RC_FILES {{CONDITION worst} {tv80s /home/ischo/generative-IR/experiments/201_ICC2/designs/tv80_0.60_0.90_pitch_6.0/results/tv80_0.60_0.90/tv80.tlup_max_125.spef}}
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:29 2023 (ok)

gsr set TOGGLE_RATE 10.0
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:29 2023 (ok)

setup design
#timestamp Tue Sep 19 21:53:29 2023 - Tue Sep 19 21:53:36 2023 (ok)

perform pwrcalc
#timestamp Tue Sep 19 21:53:36 2023 - Tue Sep 19 21:53:46 2023 (ok)

perform extraction -power -ground
#timestamp Tue Sep 19 21:53:46 2023 - Tue Sep 19 21:54:47 2023 (ok)

setup pad -power -r 0.001000 -c 0.000000
#timestamp Tue Sep 19 21:54:47 2023 - Tue Sep 19 21:54:47 2023 (ok)

setup pad -ground -r 0.001000 -c 0.000000
#timestamp Tue Sep 19 21:54:47 2023 - Tue Sep 19 21:54:47 2023 (ok)

perform analysis -static
#timestamp Tue Sep 19 21:54:47 2023 - Tue Sep 19 21:55:57 2023 (ok)

export db ./static.results
#timestamp Tue Sep 19 21:55:57 2023 - 