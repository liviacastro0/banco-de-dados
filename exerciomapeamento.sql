--Area (codArea, nomeArea)
--Livro (ISBN, anoPublicacao, autor, nome, editora, codArea)
codArea referencia Area
Aluno (matricula, nome)
Emprestado (matricula, ISBN, dataEmprestimo, dataDevolucaoPrevista, dataDevolucaoEfetiva)
matricula referencia Aluno
ISBN referencia Livro
