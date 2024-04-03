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

#Juntar dfs
SFCt <- rbind(SFC13,SFC14,SFC15,SFC16,SFC17,SFC18,
              SFC19,SFC20,SFC21,SFC23)
SFCrj <- SFCt |>
  filter(SG_UF_NOT == 33)

#Mudar o nome dos dados
SFCrj |>
  mutate(EVOLUCAO2 = case_when(
    EVOLUCAO == 1 ~ "Cura",
    EVOLUCAO == 2 ~ "Óbito",
    EVOLUCAO == 3 ~ "Óbito",
    EVOLUCAO == 9 ~ "Não disponível",
    TRUE ~ "Não disponível")) |>
  mutate(ESCOLMAE2 = case_when(
    ESCOLMAE == 0 ~ "Analfabeto",
    ESCOLMAE == 1 ~ "1ª a 4ª série incompleta do ef",
    ESCOLMAE == 2 ~ "até 4ª série completa do ef",
    ESCOLMAE == 3 ~ "5 a 8ª série incompleta do ef",
    ESCOLMAE == 4 ~ "ensino fundamental completo",
    ESCOLMAE == 5 ~ "ensino médio incompleto",
    ESCOLMAE == 6 ~ "ensino médio completo",
    ESCOLMAE == 7 ~ "educação superior incompleta",
    ESCOLMAE == 8 ~ "educação superior completa",
    ESCOLMAE == 9 ~ "Ignorado",
    ESCOLMAE == 10 ~ " não se aplica",
    TRUE ~ "Não disponível")) |>
  mutate(ANT_RACA2 = case_when(
    ANT_RACA == 4 ~ "Pardo",
    ANT_RACA == 1 ~ "Branco",
    ANT_RACA == 2 ~ "Preto",
    ANT_RACA == 3 ~ "Amarelo",
    ANT_RACA == 5 ~ "Indígena",
    TRUE ~ "Não disponível")) |>
  mutate(ANT_PRE_NA2 = case_when(
    ANT_PRE_NA == 1 ~ "Sim",
    ANT_PRE_NA == 2 ~ "Não",
    ANT_PRE_NA == 9 ~ "Ignorado",
    TRUE ~ "Não disponível")) |>
  mutate(ANTSIFIL_N2 = case_when(
    ANTSIFIL_N == 1 ~ "durante o pré-natal",
    ANTSIFIL_N == 2 ~ "no momento do parto/curetagem",
    ANTSIFIL_N == 3 ~ "após o parto",
    ANTSIFIL_N == 4 ~ "não realizado",
    ANTSIFIL_N == 9 ~ "Ignorado",
    TRUE ~ "Não disponível")) |>
  mutate(LAB_CONF2 = case_when(
    LAB_CONF == 1 ~ "reagente",
    LAB_CONF == 2 ~ "não reagente",
    LAB_CONF == 3 ~ "não realizado",
    LAB_CONF == 9 ~ "Ignorado",
    TRUE ~ "Não disponível")) |>
  mutate(TRA_ESQUEM2 = case_when(
    TRA_ESQUEM == 1 ~ "adequado",
    TRA_ESQUEM == 2 ~ "não adequado",
    TRA_ESQUEM == 3 ~ "não realizado",
    TRA_ESQUEM == 9 ~ "Ignorado",
    TRUE ~ "Não disponível")) |>
  mutate(LAB_PARTO2 = case_when(
    LAB_PARTO == 1 ~ "reagente",
    LAB_PARTO == 2 ~ "não reagente",
    LAB_PARTO == 3 ~ "não realizado",
    LAB_PARTO == 9 ~ "Ignorado",
    TRUE ~ "Não disponível")) |>
filter(!is.na(EVOLUCAO2)) |>
  select(EVOLUCAO2, ESCOLMAE2, ANT_RACA2, LAB_CONF2, TRA_ESQUEM2, LAB_PARTO2)|>
  tbl_summary(by = EVOLUCAO2, missing = "no")

  
 
  
  
  