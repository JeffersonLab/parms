
include trigger/CTOF_HTCC/ctof_cosmic.trg
include trigger/SVT/svt_prod.trg

TS_CRATE trig1

###TS_FIBER_DELAY_OFFSET 0x80 0xcf

TS_BLOCK_LEVEL 1
TS_BUFFER_LEVEL 1
#TS_BLOCK_LEVEL 1
#TS_BUFFER_LEVEL 8

#TS_HOLDOFF 1 60 1
#TS_HOLDOFF 2 60 1
#TS_HOLDOFF 3 60 1
#TS_HOLDOFF 4 60 1
TS_HOLDOFF 1 30 1
TS_HOLDOFF 2 30 1
TS_HOLDOFF 3 30 1
TS_HOLDOFF 4 30 1

#TS_INPUT_PRESCALE 1 0
#TS_INPUT_PRESCALE 2 0
#TS_INPUT_PRESCALE 3 0
#TS_INPUT_PRESCALE 4 0
#TS_INPUT_PRESCALE 5 0
#TS_INPUT_PRESCALE 6 0

#SD trigger
TS_GTP_INPUT_MASK 0x00000000
TS_FP_INPUT_MASK 0x00000200

TS_RANDOM_TRIGGER 0 3
TS_CRATE end


#
# FADCs
#
FADC250_CRATE adcctof1
FADC250_SLOT all
FADC250_COMPRESSION  2
FADC250_W_OFFSET  1860
FADC250_W_WIDTH   192
FADC250_CRATE end
include trigger/CTOF_HTCC/adcctof1_ped_cosmic.cnf

#
# TDCs
#
TDC1190_CRATE tdcctof1
TDC1190_SLOT all
TDC1190_W_OFFSET -2060
TDC1190_W_WIDTH    400
TDC1190_CRATE end

# FADCs
FADC250_CRATE adccnd1
FADC250_SLOT all
##FADC250_W_OFFSET  1760
# Default
FADC250_W_OFFSET  1860
# Youri running
#FADC250_W_OFFSET 2050
#FADC250_W_WIDTH   400
include trigger/PEDS/hv_off/adccnd1_ped.cnf

# mask off hot channel slot 4 channel 9(from 0)
FADC250_SLOT 4
#####FADC250_CH_TET  9  500
#FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  0  1  1  1  1  1  1
#FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  0  1  1  1  1  1  1
#FADC250_ADC_MASK  1  1  1  1  1  1  0  1  1  1  1  1  1  1  1  1

FADC250_CRATE end


#
# TDCs
#
TDC1190_CRATE adccnd1
TDC1190_SLOT all
# Default
TDC1190_W_OFFSET -2000
#TDC1190_W_WIDTH   2000
# Youri running
TDC1190 W_OFFSET -2060
TDC1190_CRATE end
