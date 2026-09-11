import spacy

nlp = spacy.load("es_core_news_sm") 
perro = nlp("perro")
print(perro.vector)

 