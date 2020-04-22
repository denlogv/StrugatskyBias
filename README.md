# StrugatskyBias

#### Identifying and measuring Gender-Bias in the works of the famous russian Science- and Social-Fiction writers: Arkadiy and Boris Strugatsky.

#### Project for the "Bias" class (WS 19/20) at Heidelberg University. Professor: Katja Markert. 


Here you can most of the files that were created in the project:

  1) The folder **"Evaluation Data"**

  2) The folder **"Word Lists"** contains the word lists (original and translated to Russian) from Garg et al. You can also find all the results of the bias-tests (with different models, such as the model trained on the Taiga-Corpus or the fastText-Modell from Facebook) in the **"ru"** subfolder + the corresponding Excel-tables with words that either are more associated to men or to women in the works of Strugatsky as well in both of the other models.  
  3) The folder **"Corpus"**, where different versions of the created corpus can be found (original, lemmatized (using Yandex MyStem), lemmatized with POS-Tags (converted from the MyStem standard to UPOS)).

All the works that are mentioned in this README are appropriately cited in **"Logvinenko - Implementierungsprojekt.pdf"** (the text is in German).


Here is the outline of the **Jupyter-Notebook**:

0. Some standard definitions:
	- 0.1 Imports
	- 0.2 Standard paths
	- 0.3 Auxiliary functions
1. Obtaining and preprocessing corpus:
	- 1.1 Functions for getting and processing the books
	- 1.2 Getting and creating first versions of the corpus
2. Lemmatization:
	- 2.1 Using Yandex mystem to lemmatize the corpus
	- 2.2 Extracting necessary info from json-files
	- 2.3 Showing words with count = N 
3. Training and evaluating vectors:
	- 3.0 Some preprocessing on datasets:
		- 3.0.1 Extracting info from mystem json to get tagged datasets
		- 3.0.2 Convert already tagged datasets to UPOS
	- 3.1 Function to evaluate models
	- 3.2 FastText:
		- 3.2.1 Function to train fasttext
		- 3.2.2 Parameters for training and evaluation of fasttext models
		- 3.2.3 Evaluation
	- 3.3 GloVe - trained with the Stanford-Tool:
		- 3.3.1 Script to run GloVe-Tool
		- 3.3.2 Convert GloVe-Vectors to Word2Vec-format
		- 3.3.3 Evaluation 
4. Measuring Bias:
	- 4.0 Finding most common names in corpus
	- 4.1 Creating word lists (based on Garg et al. (2018)):
		- 4.1.1 Check if a word is in the given model
		- 4.1.2 Translating the Lists from Garg's Paper
		- 4.1.3 Deleting duplicates from the translations
		- 4.1.4 Preparing word lists to be used with one of the best models from RusVectores
		- 4.1.5 Check for OOV-words in the tagged datasets
		- 4.2 Measuring bias using word lists:
			- 4.2.1 Parameters for measuring
			- 4.2.2 Auxiliary functions
			- 4.2.3 Function to compute bias and create a table with the results
			- 4.2.4 Bias-Tests on Strugatsky-Modell with different definitions for gender-vectors
			- 4.2.5 Bias-Test with the fastText-Model
			- 4.2.6 Bias-Test with the Taiga-Model
		- 4.3 Correlation Heatmaps for the Tests:
			- 4.3.1 Functions to create Heatmaps and save them as vector graphics
			- 4.3.2 Measuring correlation for the tests with the Strugatsky-Model
			- 4.3.3 Measuring correlation between 3 models for the Russian language
      
