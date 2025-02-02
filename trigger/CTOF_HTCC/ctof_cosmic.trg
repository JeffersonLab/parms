#
# tdc calibration trigger file: take data with internal pulser and low discr thresholds
#  (ssh clasrun@clonsl2, type 'fcmon', pick sector, detector and dsc2)
#

#
# TI settings
#
TI_CRATE adcctof1
TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BLOCK_LEVEL 1
TI_BUFFER_LEVEL 1

## ts1, ts2, ts3, ts4, ts5, ts6
TI_INPUT_MASK 1 0 0 0 0 0

## trigger rules
## 1 trigger in Nx0.48us
##TI_HOLDOFF 1 50 0
## 4 triggers in Nx3.84us
##TI_HOLDOFF 4 10 1
##500kHz / 2^15 => ~15Hz random
##TI_RANDOM_TRIGGER 1 3

TI_CRATE end


#
# FADCs
#
FADC250_CRATE adcctof1
FADC250_SLOT all

FADC250_W_OFFSET  1400
FADC250_W_WIDTH   400

FADC250_SLOT 13
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 14
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_SLOT 15
FADC250_ADC_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
FADC250_TRG_MASK  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0

FADC250_CRATE end

include trigger/CTOF_HTCC/adcctof1_ped_cosmic.cnf
include trigger/CND/cnd_ctof_cosmic.cnf

#
# TDCs
#

TDC1190_CRATE tdcctof1
TDC1190_SLOT all

TDC1190_W_OFFSET -1500
TDC1190_W_WIDTH    400

TDC1190_CRATE end
