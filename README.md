# BMS
Battery Management System


# Contexto
A BMS desenvolvida terá a exclusiva tarefa de realizar o equilíbrio da bateria implementada,
através de um sistema puramente elétrico. Não existe forma de monitorizar o estado das células, nem gerir
o seu equilíbrio através de firmware, visto o objetivo desta BMS é realizar apenas um carregamento seguro
sem a interferência de meios externos. Existe a possibilidade de continuar a
desenvolver esta BMS, de um modo a trocar de uma operação local, para um sistema acessível via algum
protocolo de comunicação sem fios, o que acrescenta muitas vantagens em termos de monitorização e extração
de dados. Esta possibilidade transforma-se assim num upgrade para trabalho futuro.

# Desenvolvimento
A BMS projetada, inicia-se com um circuito que regula, tanto a tensão, como a corrente elétrica a que
se expõe a bateria. Estas características são bastante importantes, pois por um lado garante-se que existe
controlo sobre a corrente máxima a que se submete as células, uma vez que ao não existir este controlo, não
se garante que o processo de carregamento esteja a ser efetuado de um modo seguro, sem interferir negativamente
nas propriedades eletroquímicas das células. Para além disso, ao se limitar a corrente máxima,
consegue-se também proteger o restante circuito de possíveis curtos-circuitos, na eventualidade da corrente
numa dada instância ser superior à corrente máxima tolerada por elementos integrantes da BMS. Por outro
lado, ao ter-se a capacidade de regular a tensão de saída, independentemente do valor da tensão de entrada,
consegue-se agora utilizar diversas fontes de alimentação e internamente regular a tensão de saída para o
valor dimensionado. Assim, deixa de ser necessário utilizar uma fonte de alimentação específica, para se
efetuar o carregamento da bateria, uma vez que sem esta possibilidade, a BMS estaria dependente de um
número restrito de fontes de alimentação que fornecessem apenas a tensão requerida e naturalmente a portabilidade
do AGV seria bastante limitada.


Neste sistema, a fim de assegurar estas caraterísticas, utilizou-se um regulador linear ajustável de tensão
positiva, o LM317T. Este possui três pinos: Input, Output e Adjustment, capaz de fornecer até 1.5 A de corrente
de saída com a possibilidade de efetuar o processo de conversão entre 1.25 a 37 V (tensão de saída). Esta
conversão apenas acontece caso a tensão de entrada seja superior à tensão de saída com uma diferença
maior ou igual a 1.5 V. Porém, a diferença entre a tensão de entrada e a tensão de saída relacionada com a
corrente conduzida pelo regulador, resulta em perdas manifestadas sob a forma de calor residual [50]. Quanto
maior são estas perdas, menor é o rendimento de conversão, o que se torna numa desvantagem neste tipo
de regulador, visto a potência elétrica dissipada sob a forma de calor poder ser superior à potência útil, para
o processo de conversão. Existem alternativas a este tipo de regulador, que possuem melhores eficiências
energéticas, porém são reguladores mais complexos de implementar de raiz, que necessitam de um maior
número de elementos e consequentemente possuem um maior footprint, o que influencia o tamanho da PCB
desenvolvida. Fora a questão da eficiência energética, o LM317T é de fácil implementação e caraterização, o
que o torna num elemento bastante viável em diversas aplicações deste tipo, transformando-o num elementochave,
para tornar a BMS desenvolvida numa placa mais genérica e
