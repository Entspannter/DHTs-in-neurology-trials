# Connected Digital Tools
Files for the manuscript "Use of Digital Health Technologies in neurology trials: evidence from ClinicalTrials.gov" (Masanneck, Gieseler, Gordon, Meuth and Stern, 2023). Read the [manuscript](https://www.nature.com/...), which was published in Nature npj Digital Medicine] on XXXX.

## Accessing the research data

*Created*: December, 19, 2022
*Author*: Lars Masanneck and Ariel D. Stern

To use the data from this paper researchers have two options:

a) The first option is to simply download the final datasets for the individual indications (in .xlsx format) using the respective folders 1-4. Each folder contains an additional codebook in .xlsx format and the raw data in .dta (Strata) format. Please note that the raw data do not contain information which trials were used for the final analysis (unlike the .xlsx). Additionally, the raw data do not contain the manually mapped additional categorical features and location data.


b) The second option is to recreate the raw datasets using raw flat files. Each folder 1-4 contains an additional a Stata Do-file that combines raw data files to create the 'raw' .dta dataset in each folder. 

**Note**: for the published results in this study, raw files were downloaded from https://aact.ctti-clinicaltrials.org/pipe_files on March 05th, 2022  (they correspond to the XXXX folder located on that webpage).

In order to re-create the full datasets from raw files (for example, if a researcher wanted to update the dataset at a later point in time), they would need the following flat files, available at the url above:

- brief_summaries.txt
- conditions.txt
- countries.txt
- design_groups.txt
- design_outcomes.txt 
- detailed_descriptions.txt 
- interventions.txt 
- intervention_other_names.txt 
- sponsors.txt
- studies.txt

## Original methodology
This article makes use of the methodology first presented in the [manuscript](https://www.nature.com/articles/s41746-020-0259-x) "Quantifying the Use of Connected Digital Products in Clinical Research" (Marra, Chen, Coravos, and Stern, 2020). Its source code can be found in the respective [repository](https://github.com/arieldora/ConnectedDigitalTools).