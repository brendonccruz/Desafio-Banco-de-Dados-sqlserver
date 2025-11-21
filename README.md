# Desafio SQL Server: Modelagem de Dados e Dominando Relacionamentos Muitos-para-Muitos (M:N)

## Visão Geral

Este repositório documenta a resolução de um conjunto de exercícios de fixação em SQL (Dialeto SQL Server), com foco em Data Query Language (DQL).

A base de dados utilizada modela um catálogo de filmes, atores e gêneros. O principal objetivo foi garantir a precisão e a integridade da consulta, especialmente na manipulação de chaves primárias e estrangeiras em **relacionamentos complexos M:N (Muitos-para-Muitos)**.

O código completo de todas as soluções pode ser consultado no arquivo **`SQLQuery2.sql`**.

---

## O Ponto Crítico: Relacionamentos M:N

O desafio técnico central deste exercício foi a extração de dados através de tabelas de ligação, essenciais para resolver os relacionamentos Muitos-para-Muitos.

Um erro comum é tentar ligar tabelas que não se comunicam diretamente (por exemplo, `Filmes` e `Generos`), resultando em consultas ineficientes ou incorretas. A solução exige a inclusão de uma terceira tabela intermediária no `JOIN` (a tabela de ligação), utilizando as chaves estrangeiras (`IdFilme`, `IdGenero`, `IdAtor`) para rastrear o caminho lógico.

### Prova de Domínio I: Filmes e Gêneros (OBJETIVO 10)

Esta consulta liga `Filmes` a `Generos` usando a tabela **`FilmesGenero`** como intermediária, garantindo a visualização de todos os gêneros de um filme.

```sql
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero -- Tabela de Ligação
	ON Filmes.Id = FilmesGenero.IdFilme  -- Liga Filmes ao link
INNER JOIN Generos
	ON Generos.Id = FilmesGenero.IdGenero; -- Liga o link a Generos
```
<img width="276" height="390" alt="image" src="https://github.com/user-attachments/assets/a58b8f54-7797-4246-aabb-0d930cffcba4" />

### Prova de Domínio II: Filmes, Atores e Papéis (OBJETIVO 12)
```sql
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme -- Tabela de Ligação
	ON Filmes.Id = ElencoFilme.IdFilme -- Liga Filmes ao link
INNER JOIN Atores
	ON Atores.Id = ElencoFilme.IdAtor; -- Liga o link a Atores
```
<img width="501" height="396" alt="image" src="https://github.com/user-attachments/assets/93a8e8f0-b4f5-4391-bbcf-c7a0a75e2199" />

### Sumário de Objetivos e Cláusulas Chave
<img width="681" height="178" alt="image" src="https://github.com/user-attachments/assets/48d5e930-007f-4802-9b5a-ac457496aeae" />
