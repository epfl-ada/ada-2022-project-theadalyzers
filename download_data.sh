#!/bin/bash

# Download wikispeedia
mkdir wikispeedia
cd wikispeedia

wget https://snap.stanford.edu/data/wikispeedia/wikispeedia_paths-and-graph.tar.gz
wget https://snap.stanford.edu/data/wikispeedia/wikispeedia_articles_plaintext.tar.gz
wget https://snap.stanford.edu/data/wikispeedia/wikispeedia_articles_html.tar.gz
for file in $(ls *.tar.gz); do tar xzvf $file; done


