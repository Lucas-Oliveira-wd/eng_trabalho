#Instalando pacotes
#Basta copiar e colocar todos as linhas desse documento e colar no compo de comando do R
#Depois basta apertar enter, e os pacotes vão se instalar sozinhos
install.packages(c("psy","psych","MASS","mirt"))
install.packages(c("lavaan","semPlot","semTools"))
install.packages(c("psy","psych","MASS","mirt"), dependencies=T)
install.packages(c("lavaan","semPlot","semTools"), dependencies=T)

setwd("G:/Meu Drive/aprendizado/faculdade/9-periodo/topicos_especiais_em_engenharia_do_trabalho/aulas/aula1/dados/")

#Entrando com dados no R
dados=read.table(file = "Dados_Sao_Joao.txt", header = T, dec = ",")

#Ativando pacotes
library(psy)
library(psych)
library(MASS)
library(mirt)
library(lavaan)

#Ativando pacote de SEM
library(semTools)
library(semPlot)
library(lavaan)

#Comando da TRI
#Se 2 parâmetros
m1=mirt(dados,1,'2PL')

#Parâmetros da TRI
coef(m1,IRTpars=T,simplify=T)

#Analisando curvas dos itens individualmente
itemplot(m1,1)

#Gerando escore dos respondentes
pv <- fscores(m1)
pv