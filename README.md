# ERA Evidence for Resilient Agriculture

## Repository Overview
This repository is part of the **Evidence for Resilient Agriculture (ERA)** data ecosystem, focusing on agronomy data. It demonstrates ERA’s capacity to integrate and analyze diverse datasets on agriculture management practices and productivity outcomes. The repository supports research on agricultural resilience, helping identify sustainable practices to enhance productivity, environmental sustainability, and resilience under diverse contexts.

Explore the rendered HTML files for detailed documentation:


## Key Features.
- **Interactive Analysis**: Includes Shiny apps for exploring agronomy data distributions with dynamic filtering.
- **Metadata Exploration**: Connects outcomes with metadata for contextual insights.
---
## Repository Contents
1. [**Guide to Agronomy Data Analysis in ERA Dataset**](https://eragriculture.github.io/ERA_Agronomy/ERA-User-Guide.html)
- Provides a roadmap for leveraging ERA datasets.
- Includes practical steps for data cleaning, visualization, and advanced analysis.

    1.1 ERA_VACS is a subset of the ERA Agronomy data, looking at legumes (https://eragriculture.github.io/ERA_Agronomy/ERA_VACS.html)
  
    1.2 ERA Agroecology is a subset of the LAC studies (https://eragriculture.github.io/ERA_Agronomy/ERA-Agroecology.html)
    
    1.3 ERA- iSPARK : Intercropping of maize in East Africa (https://eragriculture.github.io/ERA_Agronomy/ERA_Intercropping_East_Africa.html)
                      Irrigation practices in East Africa (https://eragriculture.github.io/ERA_Agronomy/ERA_Irrigation_East_Africa.html)

2. **[Guide to Climate and Soil Data in ERA](https://eragriculture.github.io/ERA_Agronomy/ERA%20Climate%20and%20Soils.html)**  
- Explains how ERA observations are enriched with geospatial climate and soil data.  
- Details data sources, processing scripts, and methods for calculating seasonal indicators like GDD, Eratio, and waterlogging.  
- Includes instructions for accessing pre-processed data from S3 and merging it with the ERA dataset.

3. **[Guide to ERA Agronomy Data Model](https://eragriculture.github.io/ERA_Agronomy/ERA-Create-Agronomy-Data-Model.html)**  
- Describes how to construct a relational data model for the ERA agronomic dataset using the `dm` package.  
- Includes steps for downloading data from S3, cleaning tables, and defining primary/foreign keys.  
- Enables robust quality checks and schema visualization to support complex querying and analysis.

---
## Background

The Evidence for Resilient Agriculture (ERA) initiative is a comprehensive ecosystem of modular projects designed to synthesize evidence supporting sustainable agricultural development. ERA is built on a shared data management system and a controlled vocabulary, facilitating consistent and scalable analysis across diverse geographies and contexts.

---

## Getting Started
1. Clone the repository:
```bash
git clone https://github.com/ERAgriculture/ERA_Agronomy.git
cd ERA_Agronomy
```

2. Open the Rmd files in RStudio.

----
**OR**
Explore the shiny app HTML pages

## About the Team
This repository is maintained by the team at the Alliance of Bioversity International and CIAT, part of the Climate Action Lever. The team specializes in synthesizing agricultural data, enabling evidence-based decision-making for resilient and sustainable farming practices.

### Key Contributors:
- **Todd S. Rosenstock**: Lead Scientist on Climate and Agriculture. Email: t.rosenstock@cgiar.org
- **Peter Steward**: Specialist in data synthesis and climate analysis for agronomy and livestock. Email: p.steward@cgiar.org
- **Namita Joshi**: Senior Research Associate, coordinating data extraction and livestock data analysis. Email: n.joshi@cgiar.org
This project is licensed under the GPL-3.0 License.

Acknowledgment
This work is funded by the CGIAR Livestock & Climate Initiative, supporting ERA’s mission of providing actionable insights into resilient agricultural practices.

For more details, please consult the foundational ERA publication:
Rosenstock, T.S., Steward, P., Joshi, N. et al. Effects of changing farming practices in African agriculture. Sci Data 11, 958 (2024)
(DOI: 10.1038/s41597-024-03805-z).

For questions or contributions, please create an issue or contact the maintainers.

