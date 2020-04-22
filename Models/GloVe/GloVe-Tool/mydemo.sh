#!/bin/bash

CORPUS=corpus_lemmatized.txt
VOCAB_FILE=results/vocab.txt
COOCCURRENCE_FILE=results/cooccurrence.bin
COOCCURRENCE_SHUF_FILE=results/cooccurrence.shuf.bin
BUILDDIR=build

VERBOSE=2
MEMORY=8.0
VOCAB_MIN_COUNT=2
BINARY=2
NUM_THREADS=8
X_MAX=100

for VECTOR_SIZE in 100 200
	do 
	for MAX_ITER in 10 20 30
		do
		for WINDOW_SIZE in 10 15 20
			do

			SAVE_FILE="results/glove_${VECTOR_SIZE}d_${MAX_ITER}it_${WINDOW_SIZE}win"

			$BUILDDIR/vocab_count -min-count $VOCAB_MIN_COUNT -verbose $VERBOSE < $CORPUS > $VOCAB_FILE
			if [[ $? -eq 0 ]]
			  then
			  $BUILDDIR/cooccur -memory $MEMORY -vocab-file $VOCAB_FILE -verbose $VERBOSE -window-size $WINDOW_SIZE < $CORPUS > $COOCCURRENCE_FILE
			  if [[ $? -eq 0 ]]
			  then
				$BUILDDIR/shuffle -memory $MEMORY -verbose $VERBOSE < $COOCCURRENCE_FILE > $COOCCURRENCE_SHUF_FILE
				if [[ $? -eq 0 ]]
				then
				   $BUILDDIR/glove -save-file $SAVE_FILE -threads $NUM_THREADS -input-file $COOCCURRENCE_SHUF_FILE -x-max $X_MAX -iter $MAX_ITER -vector-size $VECTOR_SIZE -binary $BINARY -vocab-file $VOCAB_FILE -verbose $VERBOSE
				fi
			  fi
			fi
		done
	done
done
