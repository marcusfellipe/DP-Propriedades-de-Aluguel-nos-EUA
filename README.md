#  Análise de Viabilidade Financeira de Imóveis para Aluguel nos EUA

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-green)
![Linguagem](https://img.shields.io/badge/Linguagem-R-blue)
![Ambiente](https://img.shields.io/badge/IDE-Positron-orange)

##  Sobre o Projeto
Este repositório contém a infraestrutura técnica e a análise exploratória dos microdados da **Pesquisa de Financiamento de Imóveis para Aluguel de 2024 (RHFS)**[cite: 1]. Os dados foram produzidos através de uma parceria entre o Departamento de Habitação e Desenvolvimento Urbano dos EUA (HUD) e o *U.S. Census Bureau*[cite: 1]. 

O objetivo da pesquisa é mapear a saúde do mercado imobiliário privado regular, fornecendo estatísticas sobre estrutura de hipotecas, receitas de aluguel, custos de manutenção e perfil das entidades proprietárias durante o ano de 2023[cite: 1].

##  Estrutura do Repositório
O projeto adota boas práticas de organização e versionamento:
* `dados/`: Diretório restrito para armazenamento local das bases. O `.gitignore` bloqueia arquivos `.csv` e `.xlsx` pesados para evitar limites de armazenamento, permitindo apenas arquivos `.zip` para reprodutibilidade.
* `scripts/`: Códigos em R (limpeza, exploração e modelagem).
* `graficos/`: Exportação de visualizações e *plots*.
* `docs/`: Documentação acadêmica estruturada em LaTeX.

##  Exploração e Limpeza Inicial
A análise exploratória foi conduzida no ambiente **Positron**, utilizando a linguagem R para inspeção particionada dos dados brutos com `View(head(dados, n = 10))`. 

**Tratamento de Dados Faltantes:** 
Durante a exploração, identificou-se que a base utiliza codificações numéricas oficiais do *Census Bureau* para dados ausentes, que exigem conversão para `NA` no R:
* `-9` : Não reportado (*Not reported*).
* `-8` : Não aplicável (*Not applicable*).

##  Principais Variáveis de Interesse
A avaliação da viabilidade financeira das propriedades baseia-se em cinco métricas centrais do projeto[cite: 1]:
1. **NUMUNITS_R**: Escala e porte (número total de unidades residenciais).
2. **MRKTVAL_R**: Patrimônio e valor total do ativo no mercado atual.
3. **TOTCOLL**: Fluxo de caixa via arrecadação anual de aluguéis.
4. **OPEX_R**: Custos e despesas operacionais.
5. **DEBT**: Estrutura de capital e presença de hipotecas/dívidas.

##  Como reproduzir este projeto
1. Clone este repositório: `git clone [URL_DO_SEU_REPOSITORIO]`
2. Baixe os microdados da RHFS 2024 no portal do *Census Bureau* e salve na pasta `dados/`.
3. Abra o projeto em sua IDE (Positron ou RStudio) e execute os códigos presentes na pasta `scripts/`.
