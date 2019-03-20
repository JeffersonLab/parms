#
# cnd random
#

#
# TI settings
#

TI_CRATE all
TI_FIBER_DELAY_OFFSET 0x80 0xcf

TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1
#TI_BLOCK_LEVEL 40
#TI_BUFFER_LEVEL 8

TI_INPUT_MASK 1 1 1 1 1 1

## trigger rules
## 1 trigger in Nx0.48us
##TI_HOLDOFF 1 50 0
## 4 triggers in Nx3.84us
##TI_HOLDOFF 4 10 1
##500kHz / 2^15 => ~15Hz random

TI_RANDOM_TRIGGER 1 15

TI_CRATE end



#
# FADCs
#
FADC250_CRATE all
FADC250_SLOT all

FADC250_COMPRESSION  0

FADC250_W_OFFSET  1300
#FADC250_W_WIDTH   400
FADC250_W_WIDTH   256

FADC250_TET 0
##FADC250_TET 60
##include trigger/PEDS/hv_on/adccnd1_ped.cnf

FADC250_CRATE end


#
# TDCs
#

TDC1190_CRATE adcall
TDC1190_SLOT all

TDC1190_W_OFFSET -2000
TDC1190_W_WIDTH   2000

TDC1190_CRATE end
