# StrugatskyBias

### Identifying and measuring Gender-Bias in the works of the famous russian Science- and Social-Fiction writers: Arkadiy and Boris Strugatsky.

### Project for the "Bias"-class (WS 19/20) at Heidelberg University. Professor: Katja Markert. 


Here you can most of the files that were created in the project:

  1) The folder "Evaluation Data"

  2) The folder "Word Lists" contains the word lists (original and translated to Russian) from Garg et al. You can also find all the results of the bias-tests (with different models, such as the model trained on the Taiga-Corpus or the fastText-Modell from Facebook) in the "ru" subfolder + the corresponding Excel-tables with words that either are more associated to men or to women in the works of Strugatsky as well in both of the other models.  
  3) The folder "Corpus", where different versions of the created corpus can be found (original, lemmatized (using Yandex MyStem), lemmatized with POS-Tags (converted from the MyStem standard to UPOS)).

All the works that are mentioned in this README are appropriately cited in *"Logvinenko - Implementierungsprojekt.pdf"* (the text is in German).


Here is the outline of the **Jupyter-Notebook**:

<html>
 <head>
  <style>
   OL { counter-reset: item }
   LI { display: block }
   LI:before { content: counters(item, ".") " "; counter-increment: item }
  </style>
 </head>
 <body>
 <ol>
  <li>one</li>
  <li>two</li>
  <ol>
   <li>two.one</li>
   <li>two.two</li>
   <li>two.three</li>
  </ol>
  <li>three</li>  
  <ol>
   <li>three.one</li>
   <li>three.two</li>
    <ol>
     <li>three.two.one</li>
     <li>three.two.two</li>
    </ol>
   </ol>
  <li>four</li>
  </ol>
 </body>
</html>
      
