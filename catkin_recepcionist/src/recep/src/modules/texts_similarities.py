import numpy as np
import sklearn
from sklearn.feature_extraction.text import CountVectorizer

def similarity(text_1, text_2):
	
	"""
	ngramas se refere a palavras, simbolos ou letras contidos em uma frase. Ao instanciar o CountVectorizer deve-se defirnir
	o que será referido como ngrama e o range para criação dos ngramas, com ngram_range=(1,1), somente palavras são consideiradas,
	já com ngram_range=(1,2), palavras e conjuntos de 2 palavras são considerados, e assim por diante.

	O parametro analyzer='word' considera apenas palvras com dois ou mais palvras caracteres, não consideirando artigos.

	Instância do contador de n-gramas,  countVectorizer para converter o texto em uma matriz de tokens
	"""
	counts = CountVectorizer(analyzer='word', ngram_range=(1,1))

	"""
	matriz de contagem dos ngrams definidos em ambos textos
	"""
	n_grams = counts.fit_transform([text_1,text_2])
	print('n_grams: ')
	print(n_grams)
	
	"""
	Cria um dicionário de ngramas, onde cada palavra será convertida em um número. Utilizado para mostrar mostragem
	"""
	vocab2int = counts.fit([text_1,text_2]).vocabulary_
	print('vocab2int: ')
	print(vocab2int)

	"""
	convert n_grams para array onde cada valor é referente a quantidade do ngrama presente de acordo com o vocabulario vocab2int
	"""
	n_grams_array = n_grams.toarray()
	print('n_grams_array: ')
	print(n_grams_array)

	"""
	Intersecção entre lista de n_gramas das duas frases
	"""
	intersection_list = np.amin(n_grams.toarray(),axis=0)
	print('intersection_list: ')
	print(intersection_list)
	"""
	Contagem das intersecções 
	"""
	intersection_count = np.sum(intersection_list)
	print('intersection_count: ')
	print(intersection_count)

	"""
	Normalização em relação ao vetor A vai gerar o containment que indica a relação das duas frazes de acordo com o n_grama
	"""
	index_A = 0
	A_count = np.sum(n_grams.toarray()[index_A])
	print('A_count: ')
	print(n_grams.toarray())
	containment = intersection_count/ A_count
	print('#'*30)


	return containment
