##############################################################################
## This file is part of 'axi-pcie-core'.
## It is subject to the license terms in the LICENSE.txt file found in the 
## top-level directory of this distribution and at: 
##    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
## No part of 'axi-pcie-core', including this file, 
## may be copied, modified, propagated, or distributed except according to 
## the terms contained in the LICENSE.txt file.
##############################################################################

###########################
# Partial Reconfiguration #
###########################

set_property DONT_TOUCH true [get_cells {U_App}]
set_property HD.RECONFIGURABLE true [get_cells {U_App}]
create_pblock {PB_APP}
add_cells_to_pblock [get_pblocks {PB_APP}]  [get_cells [list U_App]]
resize_pblock [get_pblocks {PB_APP}] -add {CLOCKREGION_X0Y0:CLOCKREGION_X5Y4}
resize_pblock [get_pblocks {PB_APP}] -add {CLOCKREGION_X0Y5:CLOCKREGION_X1Y9}
resize_pblock [get_pblocks {PB_APP}] -add {CLOCKREGION_X2Y8:CLOCKREGION_X2Y9}
resize_pblock [get_pblocks {PB_APP}] -add {CLOCKREGION_X3Y9:CLOCKREGION_X5Y9}
resize_pblock [get_pblocks {PB_APP}] -add {CLOCKREGION_X0Y10:CLOCKREGION_X5Y14}
set_property CONTAIN_ROUTING 1   [get_pblocks {PB_APP}]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks {PB_APP}]
set_property SNAPPING_MODE ON    [get_pblocks {PB_APP}]