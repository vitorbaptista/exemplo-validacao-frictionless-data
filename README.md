![Valida Dados](https://github.com/vitorbaptista/exemplo-validacao-frictionless-data/workflows/Valida%20Data%20Packages/badge.svg)

# Exemplo de validação usando Frictionless Data

Este repositório demonstra como usar o Frictionless Data para validar dados em um portal de dados abertos.

## Como funciona?

Este repositório contém [Data Packages][data-packages] descrevendo dados hospedados no [Portal de Dados Abertos da Prefeitura de São Paulo][dados-sp]. Eles contém
os dicionários de dados, que descrevem o que deve haver em cada coluna.

Uma vez por semana, os dados são validados usando o [frictionless-py][frictionless-py] e o resultado é disponibilizado em https://github.com/vitorbaptista/exemplo-validacao-frictionless-data/actions. Dessa forma, conseguimos monitorar a qualidade dos dados no repositório.

## Como usar?

Basta instalar as dependências usando `pip install -r requirements.txt` e executar as validações com `make validate`:

```
▶ make validate
frictionless validate datasets/**/datapackage.json --skip-errors blank-row
[valid] http://dados.prefeitura.sp.gov.br/dataset/b0216bc7-dd2e-4e6b-b02c-a259ce2e43bb/resource/74cd4826-f333-49a1-8973-0b6d9ecde509/download/uniceu2019.csv
[valid] http://dados.prefeitura.sp.gov.br/dataset/b0216bc7-dd2e-4e6b-b02c-a259ce2e43bb/resource/3c11a116-b3a5-429c-8675-ff73a871e000/download/uniceu2018.csv
[valid] http://dados.prefeitura.sp.gov.br/dataset/b0216bc7-dd2e-4e6b-b02c-a259ce2e43bb/resource/b2ac2d12-89a0-46c6-9f24-626474c03294/download/uniceu2017.csv
```

Como não hospedamos dados neste repositório, só links, as validações sempre usam os dados disponíveis na fonte e não cópias locais.

## Como adicionar um novo conjunto de dados?

Por exemplo, se você quiser adicionar o conjunto de dados disponível em http://dados.prefeitura.sp.gov.br/pt_PT/dataset/equipamentos-esportivos-clubes-administracao-direta-ces, faça:

1. Crie uma nova pasta em `./datasets/equipamentos-esportivos-clubes-administracao-direta-ces`
2. Descreva o conjunto de dados em um arquivo `datapackage.json`
  * O https://create.frictionlessdata.io ou o comando `frictionless describe` podem facilitar seu trabalho
  * Lembre de sempre definir recursos remotos no Data Package. O campo `path` do recurso deve ter a URL do arquivo no portal de dados abertos
3. Use `frictionless validate datapackage.json` para conferir que o arquivo está correto
4. Faça o commit e crie um Pull Request com seu novo Data Package

## O que é o Frictionless Data?

O [Frictionless Data][frictionless] é um conjunto de especificações que permite descrever um conjunto de dados de uma forma legível por máquina usando o padrão [Data Packages][data-package].

Caso a documentação esteja escrita nesse padrão, você pode usar o aplicativo [frictionless][frictionless-py] para validar os dados.

Uma das maiores vantagens em usar esse padrão é validar os dados. A especificação [Table Schema][table-schema] permite descrever 

[frictionless]: https://frictionlessdata.io/
[frictionless-py]: https://github.com/frictionlessdata/frictionless-py/
[data-package]: https://specs.frictionlessdata.io/data-package/
[table-schema]: https://specs.frictionlessdata.io/table-schema/
[dados-sp]: http://dados.prefeitura.sp.gov.br/
