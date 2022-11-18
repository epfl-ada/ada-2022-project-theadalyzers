# ada-2022-project-theadalyzers
# README.md


## `Wikispeedia`: An Exploration into Human Strategy for Wikipedia Path Navigation


### Abstract

`Wikispeedia` is a game where human participants are tasked with navigating from a source article to a target article. Given its formulation as a game, we are interested in exploring the participants' success based on patterns in their navigation paths. These patterns may suggest apparent strategies, or lack of, that, on average, lead to more or less successful outcomes. The insights from the results will be interesting in exploring human behavior when tasked with navigating an inherently semantic game. In the original publications reporting the `Wikispeedia` dataset, semantics-based navigation is discussed. Depending on the findings, we can supplement their findings in that following a semantic path, while seemingly intuitive, is actually counterproductive to finding the shortest path. Ultimately, the story we want to tell is centered around patterns in participants' navigation paths and how they affect the outcome


### Research Questions

1. Is human attention naturally drawn to images? Do participants, on average, tend to click hyperlinks in image captions?
2. As a related question, do participants, on average, tend to click hyperlinks at certain positions in the article (measured by the hyperlink positioning as a function of the number of paragraphs?
3. Supplementing the original publications' findings, do participants, on average, tend to click hyperlinks following semantic meaning (measured by the `Bag-of-Words Cosine Similarity`? Cosine similarity between sequential articles and current article to the target article will be investigated. Presently, only `Bag-of-Words Cosine Similarity` is implemented but alternative similarity metrics could be investigated depending on project findings.
4. Navigation paths have instrinsic graph structure. One can extract the curvature of graph nodes (as a function of the in- and out-flow of hyperlinks). Do more successful navigation paths, on average, have more negative curvature, i.e., more flow?
5. Complementary to 4., can semantics (measured by Cosine similarity) and categories of articles be used to infer the node curvature? If true and if 4. is also true, can the findings propose a "strategy" that is statistically significant in being more successful?

### Proposed Additional Datasets

We will use the `Wikispeedia` dataset only.

### Methods
* The `html` files are provided in the data repository. Whether hyperlinks are present in the images and the position of hyperlinks in an article is information we have extracted through a DataFrame processing pipeline. This will be used for question 1. and 2.
* A `Bag-of-Words Cosine Similarity` matrix has been generated. For every article, we have a similarity (a float value) to every other article. This matrix is saved and can be read from memory so queries to the matrix will be O(1) instead of O(N) from computing the dot product of the "Bag-of-Words" matrix. We have a function that transforms a navigation path into a path of Cosine similarities to investigate question 3. The saved matrix `.npz` file is not uploaded to GitHub as the file is too large.
* The categories of articles is given in the dataset. This will be used for question 5.
* Graph curvature is measured by the `Forman-Ricci Curvature` and we obtain a float value for every article. This will be used for questions 4. and 5.

All preliminary findings are presented in the `Jupyter Notebook`.


### Proposed Timeline

#### Milestone 2
- Jeff: Generated the `Bag-of-Words Cosine Similarity` matrix and evaluated whether the proposed similarity methodology is reasonable. Wrote the functions to transform navigation paths into "Cosine similarity paths" and assess if paths have strictly increasing Cosine similarity. Created the README.
- Ginevra: Created the data processing pipeline to extract hyperlink positioning in images and the article. Investigated the distribution of click frequencies with normalization methods.
- Andres: Wrote the functions for `Forman-Ricci Curvature` calculation and investigated the distribution of curvatures. Investigated the distribution of article in- and out-degrees and drew insights from these.

#### Milestone 3 Proposed Work (individual milestones done by December 1, 2022)
- Jeff : Investigate Cosine similarity as a metric for navigation path success. Work with Andres to complement his approach of investigating graph curvature. 
- Ginevra : Investigate participants' preferences for hyperlink positioning within the article and in image captions. 
- Andres : Investigate curvature of graph nodes and relate the findings to categories of each article and Cosine similarity. 
- Everyone together: draw insights from individual sections to formulate a data story. Design matched experiments to draw valid insights from hyperlink positioning, Cosine document similarity, and graph topology.
