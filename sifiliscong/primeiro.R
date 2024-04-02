library(pacman)
pacman::p_load(tidyverse,
               dplyr,
               base,
               ggplot2,
               lubridate,
               foreign,
               ggtext,
               viridis,
               ggpubr,
               compareGroups,
               geobr,
               forestplot,
               gtsummary,
               read.dbc,
               base)

#remotes::install_github("danicat/read.dbc", force = TRUE)
#install.packages("base")
#library(pacman)

dbc_file07 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR07.dbc"
dbc_file08 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR08.dbc"
dbc_file09 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR09.dbc"
dbc_file10 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR10.dbc"
dbc_file11 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR11.dbc"
dbc_file12 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR12.dbc"
dbc_file13 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR13.dbc"
dbc_file14 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR14.dbc"
dbc_file15 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR15.dbc"
dbc_file16 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR16.dbc"
dbc_file17 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR17.dbc"
dbc_file18 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR18.dbc"
dbc_file19 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR19.dbc"
dbc_file20 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR20.dbc"
dbc_file21 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR21.dbc"
dbc_file22 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR22.dbc"
dbc_file23 <- "C:/Users/julia/OneDrive/Documentos/Sífilis Congênita/sifiliscong/SIFCBR23.dbc"


SFC07	<- read.dbc(dbc_file07)
SFC08	<- read.dbc(dbc_file08)
SFC09	<- read.dbc(dbc_file09)
SFC10	<- read.dbc(dbc_file10)
SFC11	<- read.dbc(dbc_file11)
SFC12	<- read.dbc(dbc_file12)
SFC13	<- read.dbc(dbc_file13)
SFC14	<- read.dbc(dbc_file14)
SFC15	<- read.dbc(dbc_file15)
SFC16	<- read.dbc(dbc_file16)
SFC17	<- read.dbc(dbc_file17)
SFC18	<- read.dbc(dbc_file18)
SFC19	<- read.dbc(dbc_file19)
SFC20	<- read.dbc(dbc_file20)
SFC21	<- read.dbc(dbc_file21)
SFC22	<- read.dbc(dbc_file22)
SFC23	<- read.dbc(dbc_file23)


