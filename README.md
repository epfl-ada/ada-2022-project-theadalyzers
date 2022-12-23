# ada-2022-project-theadalyzers
# README.md


## `Wikispeedia`: An Exploration into Human Strategy for Wikipedia Path Navigation


### Abstract

`Wikispeedia` is a game where human participants are tasked with navigating from a source article to a target article. Given its formulation as a game, we are interested in exploring the participants' success based on patterns in their navigation paths. These patterns may suggest apparent strategies, or lack of, that, on average, lead to more or less successful outcomes. The insights from the results will be interesting in exploring human behavior when tasked with navigating an inherently semantic game. In the original publications reporting the `Wikispeedia` dataset, semantics-based navigation is discussed. Depending on the findings, we can supplement their findings in that following a semantic path, while seemingly intuitive, is actually counterproductive to finding the shortest path. Ultimately, the story we want to tell is centered around patterns in participants' navigation paths and how they affect the outcome


### Research Questions

1. Is human attention naturally drawn to images? Do participants, on average, tend to click hyperlinks in image captions?
2. As a related question, do participants, on average, tend to click hyperlinks at certain positions in the article (measured by the hyperlink positioning as a function of the number of paragraphs?
3. Supplementing the original publications' findings, do participants, on average, tend to click hyperlinks following semantic meaning (measured by the `Bag-of-Words Cosine Similarity`? Cosine similarity between sequential articles and current article to the target article will be investigated. Presently, only `Bag-of-Words Cosine Similarity` is implemented but alternative similarity metrics could be investigated depending on project findings.
4. Navigation paths have instrinsic graph structure. One can extract the curvature of graph edges (as a function of the in- and out-flow of the connected nodes, or articles). Can we assess the similarity between different paths using such features?
5. Complementary to 4., can semantics (measured by Cosine similarity) and categories of articles be used to infer the node curvature? If true and if 4. is also true, can the findings propose a "strategy" that is statistically significant in being more successful?

### Proposed Additional Datasets

We will use the `Wikispeedia` dataset only.

### Methods
* The `html` files are provided in the data repository. Whether hyperlinks are present in the images and the position of hyperlinks in an article is information we have extracted through a DataFrame processing pipeline. This will be used for question 1. and 2.
* A `Bag-of-Words Cosine Similarity` matrix has been generated. For every article, we have a similarity (a float value) to every other article. This matrix is saved and can be read from memory so queries to the matrix will be O(1) instead of O(N) from computing the dot product of the "Bag-of-Words" matrix. We have a function that transforms a navigation path into a path of Cosine similarities to investigate question 3. The saved matrix `.npz` file is not uploaded to GitHub as the file is too large.
* The categories of articles is given in the dataset. This will be used for question 5.
* Graph curvature is measured by the `Forman-Ricci Curvature` and we obtain a float value for every hyperlink in the network. The curvature of each hyperlink (edge) in the path is calculated for each path. To be able to compare paths of different lengths, we produce curvature-based descriptors of the paths, by taking the mean, minimum and maximum values of curvature along the path, as well as the same descriptors for the sequential difference in curvature (e.g. of the derivative along the path).


### Proposed Timeline

#### Milestone 2
- Jeff: Generated the `Bag-of-Words Cosine Similarity` matrix and evaluated whether the proposed similarity methodology is reasonable. Wrote the functions to transform navigation paths into "Cosine similarity paths" and assess if paths have strictly increasing Cosine similarity. Created the README.
- Ginevra: Created the data processing pipeline to extract hyperlink positioning in images and the article. Investigated the distribution of click frequencies with normalization methods.
- Andres: Wrote the functions for `Forman-Ricci Curvature` calculation and investigated the distribution of curvatures. Investigated the distribution of article in- and out-degrees and drew insights from these, and calculated path descriptors to be used as covariates in the matching studies.

#### Milestone 3 Proposed Work (individual milestones done by December 1, 2022)
- Jeff : Investigate Cosine similarity as a metric for navigation path success. Work with Andres to complement his approach of investigating graph curvature. 
- Ginevra : Investigate participants' preferences for hyperlink positioning within the article and in image captions. 
- Andres : Investigate curvature of graph nodes and relate the findings to categories of each article and Cosine similarity. 
- Everyone together: draw insights from individual sections to formulate a data story. Design matched experiments to draw valid insights from hyperlink positioning, Cosine document similarity, and graph topology.


### Contributions

- Ginevra: Created the pipeline for extraction of hyperlink positioning in images and in the articles, and investigated the distributions of such features. Added positional information to the paths and helped set up some of the `treatments` for the matching study. Contributed with the planning of the project, as well as with the design and implementation of the matching study. Contributed to the content creation for the data story, with visuals, story planning and storytelling.

- Jeff: Created the pipeline for quantification of semantic similarity between articles using a bag-of-words approach. Planned and implemented features to account for two likely treatments associated with this similarity. Analyzed the distributions and qualitative properties of such measure. Contributed with the planning of the project, as well as with the design and implementation of the matching study. Contributed with content creation for the data story.

- Andres: Created the pipeline for quantification of edge curvature. Helped plan and implement the matching study using a propensity score calculated with graph-inspired features as covariates, effectively accounting for path similarity in the matching study. Analyzed the distributions and qualitative properties of such features, as well as their interpretation in the context of the network. Contributed with the planning of the project, as well as with the design and implementation of the matching study. Contributed to the content creation for the data story, with visuals, story planning and storytelling. 
