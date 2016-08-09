## USNVC

An R package for the U.S. National Vegetation Classification (NVC) database.

The [U.S. National Vegetation Classificaiton (NVC)](http://usnvc.org) is a standardized, hierarchical classification system for vegetation in the United States. (It is aptly named.) The [NVC standards](https://www.fgdc.gov/standards/projects/FGDC-standards-projects/vegetation/NVCS_V2_FINAL_2008-02.pdf) were developed by a partnership of agencies (e.g., USDA Forest Service and US Geological Survey), professional organizations (e.g., the Ecological Society of America), and non-profits (e.g., NatureServe). The full NVC database, which can be downloaded [here](http://usnvc.org/explore-classification/), contains 18 tables with information on 8,192 vegetation categories, ranging in scope from seven very broad Classes to >4,000 highly refined Associations.

## Installation

`USNVC` isn't on CRAN, and may not be for some time because the data is too big for a CRAN package. Instead of `install.packages`, you'll have to use [devtools](https://cran.r-project.org/web/packages/devtools/index.html) to install with:

```{r}
devtools::install_github("jacob-ogre/USNVC")
```

To get the most out of the data, you'll need the [`igraph`](igraph.org/r/) package.

## NVC as a network

Because the NVC is fundamentally a network, `USNVC` includes a join of the database tables `Unit` and `UnitDescription` represented as an [`igraph`](igraph.org/r/) network. Several of the functions depend on `igraph`, and can be readily extended using that package. Last, some helper functions are available for plotting with [`visNetwork`](https://cran.r-project.org/web/packages/visNetwork/), which seems to work really well.

## Feedback

Have a question or comment about this package? Either submit a pull request or [contact us](mailto:esa@defenders.org).


