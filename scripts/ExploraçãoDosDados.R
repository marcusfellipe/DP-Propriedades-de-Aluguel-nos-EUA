# Carregando pacotes essenciais
library(dplyr)
library(readr)

# Lendo a base de dados (substitua pelo nome do seu arquivo)
dados <- read.csv("dados/rhfspuf2024.csv")

# Visualizando a estrutura (ótimo para responder sobre dimensão e variáveis)
glimpse(dados)
summary(dados)

View(head(dados, n = 4425))
