#########################################
# CLAS12 daq/trigger default config file #
##########################################

##############################
# TI settings (TI master only)
##############################

###################################
# FADC settings (detector-related)
###################################

# Common settings

FADC250_CRATE all
FADC250_SLOT     all
FADC250_MODE         1
FADC250_NSB         12
FADC250_NSA        156
FADC250_NPEAK        1
FADC250_DAC       3300
FADC250_TET         20
##FADC250_W_OFFSET  7900
FADC250_W_OFFSET  7650
FADC250_W_WIDTH    400
FADC250_CRATE end



TDC1190_CRATE all
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8450
TDC1190_CRATE end

TDC1190_CRATE tdcctof1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8250
TDC1190_CRATE end

TDC1190_CRATE adccnd1
TDC1190_SLOT all
TDC1190_W_WIDTH   800 
TDC1190_W_OFFSET -8200
TDC1190_CRATE end



VSCM_CRATE all
VSCM_SLOT all
##VSCM_TRIG_WINDOW     96      1064        16 
##VSCM_TRIG_WINDOW     96      1032        16 
##VSCM_TRIG_WINDOW     96      968        16 
##VSCM_TRIG_WINDOW     80      976        16 
#VSCM_TRIG_WINDOW     80      980        16
#VSCM_TRIG_WINDOW     80      978        16
#VSCM_TRIG_WINDOW     80      979        16
VSCM_TRIG_WINDOW     64      979        16
VSCM_CRATE end

DCRB_CRATE all
DCRB_SLOT all
##DCRB_W_OFFSET  7900
DCRB_W_OFFSET  7650
DCRB_CRATE end



#does not work yet !!!!!!!
#SSP_CRATE       rich4
#SSP_SLOT        all
#SSP_RICH_W_WIDTH    300
#SSP_RICH_W_OFFSET  7980
#SSP_CRATE end



#######################################################
#
#######################################################

# ECAL settings
#include trigger/EC/ecal_default.cnf
include trigger/EC/ecal_newgain_prod.cnf

# PCAL settings
#include trigger/EC/pcal_default.cnf
include trigger/EC/pcal_newgain_prod.cnf

# FTOF settings
include trigger/FTOF/ftof_default.cnf

# LTCC settings
include trigger/LTCC/ltcc_default.cnf

# CTOF/HTCC settings
include trigger/CTOF_HTCC/ctof_htcc_newgain_prod.cnf

# CND settings
include trigger/CND/cnd_prod.cnf

#FT CAL AND HODO
include trigger/FT/ft_default.cnf

#SVT
include trigger/SVT/svt_prod.trg

#######################################
# Trigger stage 1 (crates with FADCs) #
#######################################

# ECAL
VTP_CRATE adcecal1vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal2vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal3vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal4vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal5vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

VTP_CRATE adcecal6vtp
  include trigger/VTP/ecalvtp_low_thres.cnf
VTP_CRATE end

# PCAL
VTP_CRATE adcpcal1vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal2vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal3vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal4vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal5vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end

VTP_CRATE adcpcal6vtp
  include trigger/VTP/pcalvtp_low_thres.cnf
  include trigger/VTP/pcuvtp_default.cnf
VTP_CRATE end
#
# HTCC
#
VTP_CRATE adcctof1vtp
  include trigger/VTP/htcc_prod_2phe.cnf
VTP_CRATE end

#FT (3 VTPs inside the file)
include trigger/VTP/ftvtp_prod.cnf

# FTOF
VTP_CRATE adcftof1vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof2vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof3vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof4vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof5vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end
VTP_CRATE adcftof6vtp
  include trigger/VTP/ftofvtp_prod.cnf
VTP_CRATE end

# CTOF
VTP_CRATE adcctof1vtp
  include trigger/VTP/ctofvtp_prod.cnf
VTP_CRATE end

# CND
VTP_CRATE adccnd1vtp
  include trigger/VTP/cndvtp_prod.cnf
VTP_CRATE end


#################################
# Trigger stage 2 (crate trig2) #
#################################

SSP_CRATE trig2
SSP_SLOT all

##SSP_W_OFFSET 7900
SSP_W_OFFSET 7650
SSP_W_WIDTH  400

# 'SSP_GT_' - sectors trigger logic

SSP_GT_LATENCY            5000


#SSP_GT_HTCC_DELAY         140
#SSP_GT_FTOF_DELAY          80
#SSP_GT_ECAL_CLUSTER_DELAY   0
#SSP_GT_PCAL_CLUSTER_DELAY   0
#SSP_GT_CTOF_DELAY          212
#SSP_GT_CND_DELAY           220
#SSP_GT_PCAL_PCU_DELAY      76

SSP_GT_HTCC_DELAY           1164
SSP_GT_ECAL_CLUSTER_DELAY   1024
SSP_GT_PCAL_CLUSTER_DELAY   1024
SSP_GT_CTOF_DELAY           1236
SSP_GT_CND_DELAY            1244
SSP_GT_FTOF_DELAY           1104
SSP_GT_PCAL_PCU_DELAY       1068
SSP_GT_ECAL_COSMIC_DELAY    1068
SSP_GT_PCAL_COSMIC_DELAY    1068

# if use this, add 1024 to all above and SSP_GTC_FT_CLUSTER_DELAY below,
# subtract same from VTP_GT_LATENCY and VTP_W_OFFSET
SSP_GT_DC_SEG_DELAY         0



#pcu
SSP_GT_FTOFPCU_FTOF_WIDTH    32
SSP_GT_FTOFPCU_PCU_WIDTH     32

# FTOF PCU match table
SSP_GT_FTOFPCU_MATCH_TABLE    0         # 0 is the old map, 1 is the new map Andrea provided after the last run

# 'SSP_GT_STRG_' - sector trigger bits - logic inside single sector

########################
#
# Sector Trigger bit 0 
#
#   DC x HTCC x (PCAL+ECAL)>300MeV x PCAL>60MeV x ECAL>10MeV
########################
SSP_GT_STRG                           0
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_ECALPCAL_CLUSTER_WIDTH       96

# DC
#old
#SSP_GT_STRG_DC_MULT_EN                1
#SSP_GT_STRG_DC_MULT_MIN               3
#SSP_GT_STRG_DC_MULT_WIDTH            32

# new
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32

########################
#
# Sector Trigger bit 1 
#
#    DC x HTCC x PCAL>300MeV
########################
SSP_GT_STRG                           1
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# new DC trigger logic
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          0
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   0
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


########################
#
# Sector Trigger bit 2 
#
#    (PCAL+ECAL)>300MeV x PCAL>60MeV x ECAL>10MeV
########################
SSP_GT_STRG                           2
SSP_GT_STRG_EN                        1

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_ECALPCAL_CLUSTER_WIDTH       96


########################
#
# Sector Trigger bit 3 
#
# PCAL>300MeV
########################
SSP_GT_STRG                           3
SSP_GT_STRG_EN                        1

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96


########################
#
# Sector Trigger bit 4 #
#
# Muon Trigger: PCAL>15 MeV x PCAL < 60 MeV x ECAL>40 MeV x ECAL < 120 MeV x FTOFPCU
########################
SSP_GT_STRG                           4
SSP_GT_STRG_EN                        1

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            16
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           150
SSP_GT_STRG_PCAL_CLUSTER_EMAX           600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_EMAX          1200
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

########################
#
# Sector Trigger bit 5 
#   
#   HTCC x (PCAL+ECAL)>300MeV x PCAL>60MeV x ECAL>10MeV x DCROAD_inbend
########################
SSP_GT_STRG                           5
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN       600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# ECAL cluster trigger logic
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECAL_CLUSTER_EMIN       100
SSP_GT_STRG_ECAL_CLUSTER_WIDTH       96

# PCAL+ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_ECALPCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_ECALPCAL_CLUSTER_WIDTH       96

# new DC trigger logic
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          1
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   1
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32



########################
#
# Sector Trigger bit 6 
#
#    HTCC x PCAL>300MeV x DCROAD_inbend
########################
SSP_GT_STRG                           6
SSP_GT_STRG_EN                        1

# HTCC trigger logic
SSP_GT_STRG_HTCC_EN                   1
SSP_SLOT 3      # sector 1 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000000000FF
SSP_SLOT 4      # sector 2 SSP
SSP_GT_STRG_HTCC_MASK                 0x00000000FF00
SSP_SLOT 5      # sector 3 SSP
SSP_GT_STRG_HTCC_MASK                 0x000000FF0000
SSP_SLOT 6      # sector 4 SSP
SSP_GT_STRG_HTCC_MASK                 0x0000FF000000
SSP_SLOT 7      # sector 5 SSP
SSP_GT_STRG_HTCC_MASK                 0x00FF00000000
SSP_SLOT 8      # sector 6 SSP
SSP_GT_STRG_HTCC_MASK                 0xFF0000000000
SSP_SLOT all
SSP_GT_STRG_HTCC_WIDTH                0

# PCAL cluster trigger logic
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN      1
SSP_GT_STRG_PCAL_CLUSTER_EMIN      3000
SSP_GT_STRG_PCAL_CLUSTER_WIDTH       96

# new DC trigger logic
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          1
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   1
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  0
SSP_GT_STRG_DC_MULT_MIN               5
SSP_GT_STRG_DC_WIDTH                 32


########################
# Sector Trigger bit 7 #
#
# DC ROADS AND
# Muon Trigger: PCAL>15 MeV x PCAL < 60 MeV x ECAL>40 MeV x ECAL < 120 MeV x FTOFPCU
########################
SSP_GT_STRG                           7
SSP_GT_STRG_EN                        1

# new DC trigger logic
SSP_GT_STRG_DC_EN                     1
SSP_GT_STRG_DC_ROAD_REQUIRED          1
SSP_GT_STRG_DC_ROAD_INBEND_REQUIRED   1
SSP_GT_STRG_DC_ROAD_OUTBEND_REQUIRED  1
SSP_GT_STRG_DC_MULT_MIN               0
SSP_GT_STRG_DC_WIDTH                 32

# PCU trigger logic
SSP_GT_STRG_FTOFPCU_EN                1
SSP_GT_STRG_FTOFPCU_WIDTH            16
SSP_GT_STRG_FTOFPCU_MATCH_MASK        8

# PCAL cluster trigger logic: EMIN in 0.1 MeV units
SSP_GT_STRG_PCAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_PCAL_CLUSTER_EMIN           150
SSP_GT_STRG_PCAL_CLUSTER_EMAX           600
SSP_GT_STRG_PCAL_CLUSTER_WIDTH           96

# ECAL cluster trigger logic: EMIN in 0.1MeV units
SSP_GT_STRG_ECAL_CLUSTER_EMIN_EN          1
SSP_GT_STRG_ECAL_CLUSTER_EMIN           400
SSP_GT_STRG_ECAL_CLUSTER_EMAX          1200
SSP_GT_STRG_ECAL_CLUSTER_WIDTH           96

#######################################
# 'SSP_GTC_' - central detectors logic
#######################################

SSP_GTC_LATENCY           5000

SSP_GTC_FT_ESUM_DELAY     0
SSP_GTC_FT_CLUSTER_DELAY  1180
SSP_GTC_FT_ESUM_INTWIDTH  0

SSP_GTC_FANOUT_ENABLE_CTOFHTCC 1
SSP_GTC_FANOUT_ENABLE_CND      0

###################################################
# 'SSP_GTC_CTRG_' - central detectors trigger bits
###################################################

########################
# Central Trigger bit 0    CTRG0:  FT(300-4000)xHD(2)
########################
SSP_GTC_CTRG 0

SSP_GTC_CTRG_EN                    1
SSP_GTC_CTRG_FT_CLUSTER_EN         1
SSP_GTC_CTRG_FT_CLUSTER_EMIN       300
SSP_GTC_CTRG_FT_CLUSTER_EMAX       4000
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN  2
SSP_GTC_CTRG_FT_CLUSTER_NMIN       1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH      0
SSP_GTC_CTRG_FT_ESUM_EN            0
SSP_GTC_CTRG_FT_ESUM_EMIN          0
SSP_GTC_CTRG_FT_ESUM_WIDTH         0


########################
# Central Trigger bit 1    CTRG1:  FT(500-8500) 2 clusters 
########################
SSP_GTC_CTRG                       1
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_FT_CLUSTER_MULT_EN             1
SSP_GTC_CTRG_FT_CLUSTER_MULT_COINCIDENCE   16
SSP_GTC_CTRG_FT_CLUSTER_MULT_MIN            2

SSP_GTC_CTRG_FT_CLUSTER_EMIN              500
SSP_GTC_CTRG_FT_CLUSTER_EMAX             8500
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN           0
SSP_GTC_CTRG_FT_CLUSTER_NMIN                1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH               0

########################
# Central Trigger bit 2    CTRG2:   FT(100-16000)
########################
SSP_GTC_CTRG                       2
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_FT_CLUSTER_EN         1
SSP_GTC_CTRG_FT_CLUSTER_EMIN       100
SSP_GTC_CTRG_FT_CLUSTER_EMAX       16000
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN  0
SSP_GTC_CTRG_FT_CLUSTER_NMIN       1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH      0
SSP_GTC_CTRG_FT_ESUM_EN            0
SSP_GTC_CTRG_FT_ESUM_EMIN          0
SSP_GTC_CTRG_FT_ESUM_WIDTH         0

########################
# Central Trigger bit 3    CTRG3:  FT(300-8500)xHD(2) 
########################
SSP_GTC_CTRG                       3
SSP_GTC_CTRG_EN                    1

SSP_GTC_CTRG_FT_CLUSTER_EN         1
SSP_GTC_CTRG_FT_CLUSTER_EMIN       300
SSP_GTC_CTRG_FT_CLUSTER_EMAX       8500
SSP_GTC_CTRG_FT_CLUSTER_HODO_NMIN  2
SSP_GTC_CTRG_FT_CLUSTER_NMIN       1
SSP_GTC_CTRG_FT_CLUSTER_WIDTH      0
SSP_GTC_CTRG_FT_ESUM_EN            0
SSP_GTC_CTRG_FT_ESUM_EMIN          0
SSP_GTC_CTRG_FT_ESUM_WIDTH         0


SSP_CRATE end


########################################
# Trigger stage 3 (vtp in trig2 crate) #
########################################

VTP_CRATE trig2vtp

##VTP_W_OFFSET 7900
#VTP_W_OFFSET 7650
#VTP_W_OFFSET 6624
#VTP_W_WIDTH   400

#use for DC trigger diagnostics (and all other should be okay)
VTP_W_OFFSET       7650
VTP_W_WIDTH        1450


#        slot: 10 13  9 14  8 15  7 16  6 17  5 18  4 19  3 20
#     payload:  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
VTP_PAYLOAD_EN  0  0  1  0  1  0  1  0  1  0  1  0  1  0  1  0


# global latency
##VTP_GT_LATENCY 6450
VTP_GT_LATENCY 5426


VTP_GT_WIDTH   16

# TRIGGER BITS: 
#              trig number 
#              |   ssp trig mask 
#              |   |   ssp sector mask        
#              |   |   |  multiplicity 
#              |   |   |  |  coincidence=#extended_clock_cycles 
#              |   |   |  |  |  ssp central trig mask
#              |   |   |  |  |  |
#
# Electron, All Sectors with DC
VTP_GT_TRGBIT  0   3  63  1  1  0  # SSP STRG0|STRG1, SECTOR 1-6

# Electron, Individual Sectors with DC
VTP_GT_TRGBIT  1   3   1  1  1  0  # SSP STRG0|STRG1, SECTOR 1
VTP_GT_TRGBIT  2   3   2  1  1  0  # SSP STRG0|STRG1, SECTOR 2
VTP_GT_TRGBIT  3   3   4  1  1  0  # SSP STRG0|STRG1, SECTOR 3
VTP_GT_TRGBIT  4   3   8  1  1  0  # SSP STRG0|STRG1, SECTOR 4
VTP_GT_TRGBIT  5   3  16  1  1  0  # SSP STRG0|STRG1, SECTOR 5
VTP_GT_TRGBIT  6   3  32  1  1  0  # SSP STRG0|STRG1, SECTOR 6

# Muon, Individual Sectors
VTP_GT_TRGBIT  7   16   1  1  1  0  # SSP STRG4, SECTOR 1
VTP_GT_TRGBIT  8   16   2  1  1  0  # SSP STRG4, SECTOR 2
VTP_GT_TRGBIT  9   16   4  1  1  0  # SSP STRG4, SECTOR 3
VTP_GT_TRGBIT  10  16   8  1  1  0  # SSP STRG4, SECTOR 4
VTP_GT_TRGBIT  11  16  16  1  1  0  # SSP STRG4, SECTOR 5
VTP_GT_TRGBIT  12  16  32  1  1  0  # SSP STRG4, SECTOR 6


# PCalxECal, Individual Sectors
VTP_GT_TRGBIT  13   12   1  1  1  0  # SSP STRG0|STRG1, SECTOR 1
VTP_GT_TRGBIT  14   12   2  1  1  0  # SSP STRG0|STRG1, SECTOR 2
VTP_GT_TRGBIT  15   12   4  1  1  0  # SSP STRG0|STRG1, SECTOR 3
VTP_GT_TRGBIT  16   12   8  1  1  0  # SSP STRG0|STRG1, SECTOR 4
VTP_GT_TRGBIT  17   12  16  1  1  0  # SSP STRG0|STRG1, SECTOR 5
VTP_GT_TRGBIT  18   12  32  1  1  0  # SSP STRG0|STRG1, SECTOR 6

# Electron With DC_Roads

VTP_GT_TRGBIT  19   96   1  1  1  0  # SSP STRG0|STRG1, SECTOR 1
VTP_GT_TRGBIT  20   96   2  1  1  0  # SSP STRG0|STRG1, SECTOR 2
VTP_GT_TRGBIT  21   96   4  1  1  0  # SSP STRG0|STRG1, SECTOR 3
VTP_GT_TRGBIT  22   96   8  1  1  0  # SSP STRG0|STRG1, SECTOR 4
VTP_GT_TRGBIT  23   96  16  1  1  0  # SSP STRG0|STRG1, SECTOR 5
VTP_GT_TRGBIT  24   96  32  1  1  0  # SSP STRG0|STRG1, SECTOR 6


# DC_ROADS

VTP_GT_TRGBIT  25  128   1  1  1  0  # SSP STRG0|STRG1, SECTOR 1
VTP_GT_TRGBIT  26  128   2  1  1  0  # SSP STRG0|STRG1, SECTOR 2
VTP_GT_TRGBIT  27  128   4  1  1  0  # SSP STRG0|STRG1, SECTOR 3
VTP_GT_TRGBIT  28  128   8  1  1  0  # SSP STRG0|STRG1, SECTOR 4
VTP_GT_TRGBIT  29  128  16  1  1  0  # SSP STRG0|STRG1, SECTOR 5
VTP_GT_TRGBIT  30  128  32  1  1  0  # SSP STRG0|STRG1, SECTOR 6


# PULSER
VTP_GT_TRG             31
VTP_GT_TRG_PULSER_FREQ 100.0

VTP_CRATE end

############################
# TS settings (trig1 crate)
############################

TS_CRATE trig1

#lock-roc mode
#TS_BLOCK_LEVEL   1
#TS_BUFFER_LEVEL  1


# with micromega
#TS_BLOCK_LEVEL   10
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 30 1
#TS_HOLDOFF   2 30 1
#TS_HOLDOFF   3 30 1
#TS_HOLDOFF   4 30 1

# production: 5 5 15 10
TS_BLOCK_LEVEL   40
TS_BUFFER_LEVEL   8
TS_HOLDOFF   1  5 1
TS_HOLDOFF   2  5 1
TS_HOLDOFF   3 15 1
TS_HOLDOFF   4 10 1

# crashes VTPs
#TS_BLOCK_LEVEL   40
#TS_BUFFER_LEVEL   8
#TS_HOLDOFF   1 10 1
#TS_HOLDOFF   2 10 1
#TS_HOLDOFF   3  7 1
#TS_HOLDOFF   4  5 1

#
# TS GTP trigger mask
#
TS_GTP_INPUT_MASK 0xFFFFFFFF

#bit 28
##TS_GTP_INPUT_MASK 0x10000000
##TS_GTP_INPUT_MASK 0x00000000


#
# TS FP trigger mask
#
# 0x80  - FARADAY
# 0x100 - SVT
# 0x200 - CTOF
# 0x400 - CND
# 0x800 - MVT
# 0x1000 - helicity

# TS_FP_INPUT_MASK 0x00001080
TS_FP_INPUT_MASK 0x00000000

### Faraday cup prescale
TS_FP_PRESCALE  8 5


# TS_GTP_PRESCALE bit prescale
# TS_FP_PRESCALE  bit prescale
# Note: actual prescale is 2^(prescale-1)+1
#       prescale from 0 to 15
#       bit from 0 to 31  Prescale=(1-32)

#
# NO PRESCALE ON MAIN TRIGGER BITS 1-7
# PRESCALE BIT NUMBER HERE IS +1 wrt BIT DEFINITION, I.E. BIT 0 ABOVE IS BIT 1 HERE, .. , BIT 31 ABOVE is BIT 32 HERE

TS_GTP_PRESCALE  1 15
TS_GTP_PRESCALE  2 15
TS_GTP_PRESCALE  3 15
TS_GTP_PRESCALE  4 15
TS_GTP_PRESCALE  5 15
TS_GTP_PRESCALE  6 15
TS_GTP_PRESCALE  7 15

# Muon -Sector 1-6 
TS_GTP_PRESCALE   8 0
TS_GTP_PRESCALE   9 0
TS_GTP_PRESCALE  10 0
TS_GTP_PRESCALE  11 0
TS_GTP_PRESCALE  12 0
TS_GTP_PRESCALE  13 0

TS_GTP_PRESCALE  14 15
TS_GTP_PRESCALE  15 15
TS_GTP_PRESCALE  16 15
TS_GTP_PRESCALE  17 15
TS_GTP_PRESCALE  18 15
TS_GTP_PRESCALE  19 15
TS_GTP_PRESCALE  20 15
TS_GTP_PRESCALE  21 15
TS_GTP_PRESCALE  22 15
TS_GTP_PRESCALE  23 15
TS_GTP_PRESCALE  24 15
TS_GTP_PRESCALE  25 15
TS_GTP_PRESCALE  26 15
TS_GTP_PRESCALE  27 15
TS_GTP_PRESCALE  28 15
TS_GTP_PRESCALE  29 15
TS_GTP_PRESCALE  30 15
TS_GTP_PRESCALE  31 15
TS_GTP_PRESCALE  32 15




#Pulser
#TS_GTP_PRESCALE 32  0

# First arg:      0-disable, 
#                 1-enable; 
#                 |   Prescale (15-7Hz, 7-3.5kHz, 5-15kHz, 4-30kHz, 3-60kHz)
#                 |   |
TS_RANDOM_TRIGGER 0   5

TS_CRATE end

