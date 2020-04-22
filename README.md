# StrugatskyBias

### Identifying and measuring Gender-Bias in the works of the famous russian Science- and Social-Fiction writers: Arkadiy and Boris Strugatsky.

### Project for the "Bias"-class (WS 19/20) at Heidelberg University. Professor: Katja Markert. 


Here you can most of the files that were created in the project:

  1) The folder "Evaluation Data"

  2) The folder "Word Lists" contains the word lists (original and translated to Russian) from Garg et al. You can also find all the results of the bias-tests (with different models, such as the model trained on the Taiga-Corpus or the fastText-Modell from Facebook) in the "ru" subfolder + the corresponding Excel-tables with words that either are more associated to men or to women in the works of Strugatsky as well in both of the other models.  
  3) The folder "Corpus", where different versions of the created corpus can be found (original, lemmatized (using Yandex MyStem), lemmatized with POS-Tags (converted from the MyStem standard to UPOS)).

All the works that are mentioned in this README are appropriately cited in "Logvinenko - Implementierungsprojekt.pdf" (the text is in German).


Here is the outline of the **Jupyter-Notebook**:

<ol>
<li>0. Some standard definitions:</li>
<li>   0.1 Imports</li>
<li>   0.2 Standard paths</li>
<li>   0.3 Auxiliary functions</li>
<li>    </li>
<li>1. Obtaining and preprocessing corpus:</li>
<li>   1.1 Functions for getting and processing the books</li>
<li>   1.2 Getting and creating first versions of the corpus</li>
<li>    </li>
<li>2. Lemmatization:</li>
<li>   2.1 Using Yandex mystem to lemmatize the corpus</li>
<li>   2.2 Extracting necessary info from json-files</li>
<li>   2.3 Showing words with count = N</li>
<li>     </li>
<li>3. Training and evaluating vectors:</li>
<li>   3.0 Some preprocessing on datasets:</li>
<li>       3.0.1 Extracting info from mystem json to get tagged datasets</li>
<li>       3.0.2 Convert already tagged datasets to UPOS</li>
<li>   3.1 Function to evaluate models</li>
<li>   3.2 FastText:</li>
<li>       3.2.1 Function to train fasttext</li>
<li>       3.2.2 Parameters for training and evaluation of fasttext models</li>
<li>       3.2.3 Evaluation</li>
<li>   3.3 GloVe - trained with the Stanford-Tool:</li>
<li>       3.3.1 Script to run GloVe-Tool</li>
<li>       3.3.2 Convert GloVe-Vectors to Word2Vec-format</li>
<li>       3.3.3 Evaluation</li>
<li>      </li>
<li>4. Measuring Bias:</li>
<li>   4.0 Finding most common names in corpus</li>
<li>   4.1 Creating word lists (based on Garg et al. (2018)):</li>
<li>       4.1.1 Check if a word is in the given model</li>
<li>       4.1.2 Translating the Lists from Garg's Paper</li>
<li>       4.1.3 Deleting duplicates from the translations</li>
<li>       4.1.4 Preparing word lists to be used with one of the best models from RusVectores</li>
<li>       4.1.5 Check for OOV-words in the tagged datasets</li>
<li>   4.2 Measuring bias using word lists:</li>
<li>       4.2.1 Parameters for measuring</li>
<li>       4.2.2 Auxiliary functions</li>
<li>       4.2.3 Function to compute bias and create a table with the results</li>
<li>       4.2.4 Bias-Tests on Strugatsky-Modell with different definitions for gender-vectors</li>
<li>       4.2.5 Bias-Test with the fastText-Model</li>
<li>       4.2.6 Bias-Test with the Taiga-Model</li>
<li>   4.3 Correlation Heatmaps for the Tests:</li>
<li>       4.3.1 Functions to create Heatmaps and save them as vector graphics</li>
<li>       4.3.2 Measuring correlation for the tests with the Strugatsky-Model</li>
<li>       4.3.3 Measuring correlation between 3 models for the Russian language</li>
</ol>
      
