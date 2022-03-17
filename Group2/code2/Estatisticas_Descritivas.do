*Estatisticas descritivas dos dados usados no artigo
*Neste ponto alterou-se os dados através da introdução de uma nova variável que atribui um *valor específico a cada país. Desse modo, podemos informar o Stata que estamos a usar dados *em painel através do código xtset, o que nos permite utilizar o código xtsum para obter *estatísticas descritivas dos dados e o código panelstat para obtermos uma caracterização *detalhada dos dados em painel
*Caso o leitor não possua o comando panelstat instalado, pode fazê-lo através da ligação dispnivel na nota de rodapé 3 do relatório

log using DescStat.txt, text replace

use ctax_gdp_AERPP.dta, clear

egen IDDS=group(ID)

xtset IDDS year
xtsum share19 dlrgdp dlemptot ctaxever rater_LCU~18 ctaxyear EU EU2
panelstat IDDS year

log close