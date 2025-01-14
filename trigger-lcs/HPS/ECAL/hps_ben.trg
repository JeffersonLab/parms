##########################
# GTP
##########################
GTP_CRATE all

GTP_CLUSTER_PULSE_COIN      3    3

# SEED thrershold in MeV (0-8191)
GTP_CLUSTER_PULSE_THRESHOLD 35

GTP_CRATE end

##########################
# HPS 11 Crate
##########################

### TI
TI_CRATE hps11

TI_FIBER_DELAY_OFFSET 0x80 0xcf
TI_BUFFER_LEVEL 8
TI_BLOCK_LEVEL  1

TI_INPUT_PRESCALE 1  0
TI_INPUT_PRESCALE 2  0
TI_INPUT_PRESCALE 3  0
TI_INPUT_PRESCALE 4  0
TI_INPUT_PRESCALE 5  0
TI_INPUT_PRESCALE 6  0

TI_CRATE end


### SSP
SSP_CRATE hps11

SSP_ALLSLOTS
SSP_W_WIDTH   100
SSP_W_OFFSET  799

SSP_HPS_PULSER 1       # 1Hz pulser period

# ecal triggers:
# HPS SINGLES 0  -> TI TS1
#SSP_HPS_SET_IO_SRC		7	20	#ENABLED
SSP_HPS_SET_IO_SRC		7	0	#DISABLED

#HPS SINGLES 1   -> TI TS2
#SSP_HPS_SET_IO_SRC		8	21	#ENABLED
SSP_HPS_SET_IO_SRC		8	0	#DISABLED

#HPS PAIRS 0     -> TI TS3
#SSP_HPS_SET_IO_SRC		9	22	#ENABLED
SSP_HPS_SET_IO_SRC		9	0	#DISABLED

#HPS PAIRS 1     -> TI TS4
#SSP_HPS_SET_IO_SRC		10	23	#ENABLED
SSP_HPS_SET_IO_SRC		10	0	#DISABLED

# HPS COSMIC/LED -> TI TS5
#SSP_HPS_SET_IO_SRC		11	24	#ENABLED-LED
SSP_HPS_SET_IO_SRC		11	25	#ENABLED-COSMIC
#SSP_HPS_SET_IO_SRC		11	0	#DISABLED

# PULSER         -> TI TS6
SSP_HPS_SET_IO_SRC		12	18	#ENABLED
#SSP_HPS_SET_IO_SRC		12	0	#DISABLED


# coinc time 10=40 ns
SSP_HPS_COSMIC_TIMECOINCIDENCE  10

# cosmic B0 and B1 (136<<8) + led trigger (254<<0)
SSP_HPS_COSMIC_PATTERNCOINCIDENCE   35070

SSP_HPS_LATENCY 475

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  0  20  0
SSP_HPS_SINGLES_EMAX  0  200 0
SSP_HPS_SINGLES_NMIN  0  1    0

# Singles 0 trigger
SSP_HPS_SINGLES_EMIN  1  40 0
SSP_HPS_SINGLES_EMAX  1  100 0
SSP_HPS_SINGLES_NMIN  1  2    0

# Pairs 0 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  0  5
SSP_HPS_PAIRS_EMIN             0  20
SSP_HPS_PAIRS_EMAX             0  1000
SSP_HPS_PAIRS_NMIN             0  1
SSP_HPS_PAIRS_SUMMAX_MIN       0  300 42  0
SSP_HPS_PAIRS_DIFFMAX          0  100      0
SSP_HPS_PAIRS_COPLANARITY      0  70        0
SSP_HPS_PAIRS_ENERGYDIST       0  5.5  100  0

# Pairs 1 trigger
SSP_HPS_PAIRS_TIMECOINCIDENCE  1  4
SSP_HPS_PAIRS_EMIN             1  40
SSP_HPS_PAIRS_EMAX             1  400
SSP_HPS_PAIRS_NMIN             1  2
SSP_HPS_PAIRS_SUMMAX_MIN       1  190 82 0
SSP_HPS_PAIRS_DIFFMAX          1  100      0
SSP_HPS_PAIRS_COPLANARITY      1  40        0
SSP_HPS_PAIRS_ENERGYDIST       1  4.5  200  0

SSP_CRATE end


### FADC: RF SIGNALS, HPS11, SLOT 13, CHANNELS 0/1
FADC250_CRATE hps11

FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3010
FADC250_W_WIDTH 400

FADC250_MODE      1
FADC250_NSB       12
FADC250_NSA       240
FADC250_NPEAK     1

#       channel:  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

#Set RF clock threshold
FADC250_TET 800

FADC250_SLOT 13
FADC250_ALLCH_PED 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

FADC250_CRATE end


##########################
# HPS 12 Crate
##########################

### TI
TI_CRATE hps12
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end


##########################
# HPS 1 Crate
##########################

### TI
TI_CRATE hps1
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end

### FADC
FADC250_CRATE hps1

FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3180
FADC250_W_WIDTH   400

FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_TET 12

FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.213   0.232   0.213   0.220   0.229   0.186   0.188   0.214   0.189   0.206   0.206   0.215   0.213   0.221   0.231   0.200
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.204   0.198   0.219   0.207   0.217   0.217   0.218   0.210   0.211   0.224   0.222   0.215   0.228   0.269   0.196   0.209
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.205   0.203   0.179   0.211   0.192   0.211   0.204   0.214   0.205   0.204   0.201   0.228   0.209   0.219   0.188   0.213
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.215   0.199   0.225   0.186   0.200   0.177   0.232   0.213   0.225   0.197   0.212   0.217   0.200   0.188   0.212   0.203
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.224   0.217   0.194   0.206   0.215   0.220   0.217   0.206   0.190   0.160   0.227   0.193   0.217   0.201   0.192   0.221
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.208   0.205   0.196   0.208   0.207   0.205   0.201   0.209   0.200   0.204   0.196   0.225   0.223   0.197   0.213   0.212
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.220   0.215   0.207   0.187   0.178   0.207   0.209   0.209   0.202   0.190   0.221   0.197   0.195   0.220   0.201   0.225
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.205   0.203   0.211   0.257   0.219   0.208   0.217   0.189   0.185   0.202   0.197   0.233   0.208   0.232   0.192   0.232
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.200   0.218   0.217   0.206   0.238   0.217   0.211   0.205   0.213   0.214   0.189   0.213   0.221   0.216   0.209   0.212
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.198   0.197   0.195   0.213   0.229   0.191   0.194   0.206   0.200   0.215   0.200   0.222   0.208   0.219   0.222   0.203
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.213   0.218   0.217   0.190   0.219   0.227   0.202   0.206   0.210   0.212   0.227   0.201   0.212   0.215   0.216   0.209
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.191   0.231   0.194   0.208   0.219   0.211   0.207   0.195   0.191   0.207   0.201   0.199   0.208   0.211   0.217   0.201
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.191   0.197   0.204   0.208   0.209   0.215   0.211   0.216   0.205   0.248   0.216   0.225   0.238   0.236   0.193   0.197
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.210   0.213   0.178   0.194   0.196   0.209   0.248   0.210   0.188   0.229   0.242   0.227   0.207   1.000   1.000   1.000

# Set LED system trigger threshold
FADC250_SLOT      20
FADC250_CH_TET    15   500

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

#FADC250_CONF_FILE hps1_ped.cnf
FADC250_SLOT 3
FADC250_ALLCH_PED  124.806   55.714   97.179   95.721  110.871  120.151   99.248  131.028  137.822  140.776  138.109  136.562   93.167  127.913  103.782  118.044
FADC250_SLOT 4
FADC250_ALLCH_PED  102.878   97.178   80.299   87.760  112.077   76.906  158.651   63.879  102.384   93.620   63.729   99.910   59.516  128.296   87.844  120.913
FADC250_SLOT 5
FADC250_ALLCH_PED   85.451  140.696   92.821  116.482   90.390  122.919  110.689  131.518   86.306  143.098  111.763  118.335   98.432  112.009   87.362  120.775
FADC250_SLOT 6
FADC250_ALLCH_PED  129.142   98.230  163.115  159.746  151.986  145.524  126.812  105.593  126.903  138.372   87.414  121.134  136.659  110.967   99.551  120.665
FADC250_SLOT 7
FADC250_ALLCH_PED  123.709  136.473  127.996  125.503  120.426  104.289  143.996  146.912  111.086   82.704  128.368  119.178  101.924  111.386  114.378  106.604
FADC250_SLOT 8
FADC250_ALLCH_PED  140.567  131.499   95.804  122.093  122.584  105.745  124.366  116.403  113.156   91.637  140.003  131.885  154.441  112.104  125.786   49.753
FADC250_SLOT 9
FADC250_ALLCH_PED  123.815  138.008  105.133  111.805  125.811  116.828  129.209  138.005  105.892  123.654  122.209   79.916  125.017  103.097   95.523  135.571
FADC250_SLOT 14
FADC250_ALLCH_PED   93.442   97.032  126.799   99.385  109.953  110.322  167.546  141.851  126.681   92.167  125.367  107.670  131.219  119.678  110.903  109.062
FADC250_SLOT 15
FADC250_ALLCH_PED  106.912  147.043  104.636  185.723  139.819  147.919  142.959  149.522  112.777  162.101  104.850  129.794  110.658  129.099  141.492  118.228
FADC250_SLOT 16
FADC250_ALLCH_PED  112.543  142.879  115.452  135.814  152.680   81.959  112.396  110.620   77.886  108.850   91.709  127.999  129.286  105.608  104.783  116.051
FADC250_SLOT 17
FADC250_ALLCH_PED   94.188   93.575  124.862  118.388  137.288   93.305  121.999  119.792  118.293   85.817  133.353   97.049   90.020   95.824   69.628  105.058
FADC250_SLOT 18
FADC250_ALLCH_PED  107.442  123.072  135.529  103.875  132.660  127.837  130.875  116.522   77.792  104.325  104.002  117.704  161.912  140.485  141.468  121.165
FADC250_SLOT 19
FADC250_ALLCH_PED  110.197  129.116  126.661   52.636   88.248  143.847  128.375  134.894  124.278  120.593  143.239  119.396  132.879  104.761  120.567  134.004
FADC250_SLOT 20
FADC250_ALLCH_PED  111.759   90.662  104.590  127.800   79.542  115.619  105.716   86.332  125.321   83.265  106.661   95.148  106.589   78.937   99.759  194.384

FADC250_CRATE end

##########################
# HPS 2 Crate
##########################

### TI
TI_CRATE hps2
TI_FIBER_DELAY_OFFSET 0x80 0xc9
TI_CRATE end

### FADC
FADC250_CRATE hps2

FADC250_SLOT all
FADC250_DAC  3300
FADC250_W_OFFSET 3180
FADC250_W_WIDTH   400

FADC250_MODE      1
FADC250_NSB       20
FADC250_NSA       100
FADC250_NPEAK     1

#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_ADC_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TRG_MASK        1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

FADC250_TET 12

FADC250_SLOT  3
FADC250_ALLCH_GAIN    0.290   0.224   0.217   0.284   0.246   0.227   0.262   0.220   0.244   0.214   0.220   0.191   0.208   0.214   0.226   0.214
FADC250_SLOT  4
FADC250_ALLCH_GAIN    0.202   0.206   0.232   0.239   0.209   0.234   0.203   0.196   0.202   0.221   0.219   0.240   0.209   0.230   0.210   0.193
FADC250_SLOT  5
FADC250_ALLCH_GAIN    0.208   0.200   0.194   0.203   0.197   0.200   0.208   0.209   0.203   0.218   0.200   0.202   0.199   0.213   0.213   0.190
FADC250_SLOT  6
FADC250_ALLCH_GAIN    0.194   0.182   0.195   0.184   0.188   0.210   0.218   0.237   0.213   0.211   0.203   0.185   0.221   0.206   0.212   0.202
FADC250_SLOT  7
FADC250_ALLCH_GAIN    0.200   0.218   0.214   0.180   0.217   0.201   0.227   0.221   0.221   0.236   0.217   0.209   0.228   0.213   0.207   0.229
FADC250_SLOT  8
FADC250_ALLCH_GAIN    0.201   0.194   0.297   0.202   0.211   0.238   0.189   0.204   0.203   0.223   0.219   0.194   0.211   0.202   0.194   0.209
FADC250_SLOT  9
FADC250_ALLCH_GAIN    0.194   0.200   0.199   0.204   0.221   0.180   0.204   0.217   0.213   0.207   0.186   0.182   0.201   0.205   0.202   0.215
FADC250_SLOT  14
FADC250_ALLCH_GAIN    0.215   0.209   0.196   0.206   0.189   0.209   0.196   0.237   0.208   0.214   0.151   0.211   0.183   0.207   0.223   0.239
FADC250_SLOT  15
FADC250_ALLCH_GAIN    0.212   0.208   0.215   0.207   0.215   0.191   0.191   0.202   0.192   0.220   0.190   0.188   0.212   0.190   0.205   0.198
FADC250_SLOT  16
FADC250_ALLCH_GAIN    0.224   0.219   0.185   0.220   0.215   0.191   0.200   0.222   0.214   0.226   0.229   0.237   0.220   0.225   0.205   0.209
FADC250_SLOT  17
FADC250_ALLCH_GAIN    0.189   0.188   0.186   0.209   0.190   0.190   0.221   0.193   0.212   0.211   0.197   0.204   0.233   0.191   0.193   0.189
FADC250_SLOT  18
FADC250_ALLCH_GAIN    0.204   0.213   0.218   0.212   0.199   0.197   0.219   0.190   0.200   0.220   0.208   0.211   0.210   0.202   0.228   0.268
FADC250_SLOT  19
FADC250_ALLCH_GAIN    0.202   0.251   0.194   0.197   0.243   0.217   0.214   0.208   0.227   0.202   0.204   0.198   0.201   0.219   0.215   0.199
FADC250_SLOT  20
FADC250_ALLCH_GAIN    0.241   0.216   0.219   0.199   0.204   0.206   0.212   0.209   0.213   0.222   0.212   0.221   0.226   1.000   1.000   1.000

# Set cosmic system trigger threshold
# 12bit -> 1V: 40 = ~10mV threshold
# relative to pedestal
FADC250_SLOT      20
FADC250_CH_TET    13   40
FADC250_CH_TET    14   40
#       channel:        0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
FADC250_TET_IGNORE_MASK 1  1  1  1  1  1  1  1  1  1  1  1  1  0  0  0

#FADC250_CONF_FILE hps2_ped.cnf
FADC250_SLOT 3
FADC250_ALLCH_PED  138.278  110.632   90.891  132.396  119.667   86.377  160.194  100.138  132.745  137.962  114.488  142.624  136.955  118.515  133.148  154.025
FADC250_SLOT 4
FADC250_ALLCH_PED  138.060  112.327  132.943  116.038  101.852  169.146  160.677  136.693  146.318  122.366  146.804  125.444  149.029  137.426  146.406  120.786
FADC250_SLOT 5
FADC250_ALLCH_PED   98.349   77.212   98.737  124.829  127.157  110.026  108.605  144.291  123.528  128.900   99.920  140.119  127.328  104.910  116.603  117.737
FADC250_SLOT 6
FADC250_ALLCH_PED   95.329  108.294  119.722  110.003  141.097  114.487   88.579   92.723  116.954  162.985  120.780  130.787   96.258  153.275  104.844  122.377
FADC250_SLOT 7
FADC250_ALLCH_PED  177.554  106.598  109.624  126.365  133.605  145.859  128.906  116.792  148.348  132.969  122.521  110.524  122.038  137.606  125.297  143.665
FADC250_SLOT 8
FADC250_ALLCH_PED  114.651  123.855   89.219   98.468  103.750   83.310  121.319  135.032   83.639  152.599  112.127   78.486  106.042   90.967   80.245   93.129
FADC250_SLOT 9
FADC250_ALLCH_PED  122.632  182.285  158.905  154.497  119.786  103.280  113.768  118.136  109.763  172.948  148.267  114.576  135.573  137.415  139.293  163.609
FADC250_SLOT 14
FADC250_ALLCH_PED  151.730  146.970  113.163  100.671  120.783  138.203  124.541  111.380  156.450  149.114  122.853  137.685  106.395  147.772   89.692  127.365
FADC250_SLOT 15
FADC250_ALLCH_PED   97.220  129.732   90.606   86.343  108.035  123.067  119.963  119.992  112.029  113.357  122.568   82.766  100.189  116.876  158.477   78.346
FADC250_SLOT 16
FADC250_ALLCH_PED  107.971  109.576   93.033   91.398  101.173  120.179  106.704  101.672  121.603   98.879  153.929  115.374  116.137  139.707   90.257   97.626
FADC250_SLOT 17
FADC250_ALLCH_PED  114.816  127.092  110.973  103.807  109.950  122.520  115.279  109.590  125.882  115.884  117.363  112.875  113.894  105.395  160.384  119.745
FADC250_SLOT 18
FADC250_ALLCH_PED  141.780  127.845  114.696  142.417  139.295  140.167  143.533  104.481  101.815  108.918  141.592  181.644  140.789  116.246  129.213  156.221
FADC250_SLOT 19
FADC250_ALLCH_PED  116.804  134.529  143.366  100.805   91.896  139.623   88.251   89.254   94.012  118.261  113.422   96.290  129.868  142.205  101.491  143.162
FADC250_SLOT 20
FADC250_ALLCH_PED  114.169  110.449  121.271  112.423   90.095  110.530  113.252   73.055  114.262  113.795   92.211   84.849  126.418  118.765  142.444   93.138

FADC250_CRATE end
