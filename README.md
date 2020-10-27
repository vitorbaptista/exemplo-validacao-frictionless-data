![Valida Dados](https://github.com/vitorbaptista/exemplo-validacao-frictionless-data/workflows/Valida%20Data%20Packages/badge.svg)

# Exemplo de validação usando Frictionless Data

Este repositório demonstra como usar o Frictionless Data para validar dados em um portal de dados abertos.

## Como funciona?

Este repositório guarda [Data Packages] descrevendo dados hospedados no [Portal de Dados Abertos da Prefeitura de São Paulo][dados-sp].

## O que é o Frictionless Data?

O [Frictionless Data][frictionless] é um conjunto de especificações que permite descrever um conjunto de dados de uma forma legível por máquina usando o padrão [Data Packages][data-package].

Caso a documentação esteja escrita nesse padrão, você pode usar o aplicativo [frictionless][frictionless-py] para validar os dados.

Uma das maiores vantagens em usar esse padrão é validar os dados. A especificação [Table Schema][table-schema] permite descrever 

[frictionless]: https://frictionlessdata.io/
[frictionless-py]: https://github.com/frictionlessdata/frictionless-py/
[data-package]: https://specs.frictionlessdata.io/data-package/
[table-schema]: https://specs.frictionlessdata.io/table-schema/
[dados-sp]: http://dados.prefeitura.sp.gov.br/
