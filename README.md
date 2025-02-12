# Ovarian Cancer Classification
This repository contains coding examples in both SAS and Python for classifying Ovarian Cancer using anonymized patient data. By leveraging machine learning models the demo showcases how ease of implementation, speed, and accuracy vary greatly between SAS, Sci-Kit Learn, and SAS Viya ML.

## Prerequisites
- An active SAS Viya Workbench license and environment
- This demo makes use of certain open-source Python packages such as sklearn, all of which are expected to be made available out of the box with a SAS Viya Workbench environment.  In case of a requirement to install a package, install the same from the terminal:

```python
pip install <your_package>
```

## Data
The dataset used in this demo is provided by R&D and contains the following key features for prediction:

**Demographic data:**
- Age

**Biomarkers and lab test values:**
- CA-125 (U/mL)
- AST (U/L)
- ALT (U/L)
- Albumin (g/dL)
- Sodium (mmol/L)
- Creatinine (mg/dL)
- White Blood Cell Count (/uL)
- Lymphocyte Count (/uL)
- CA19-9 (U/mL)
- Fibrinogen (mg/dL)
- The dataset also includes class variables such as:

**Histologic types of cancer:**
- FIGO stage of the tumor
- Model Implementation

## Parameters

The SAS modeling procedure and Sci-Kit Learn Libraries are used for feature selection and model training. 

**Key steps include:**

- Data Partitioning: Splits data into training and validation sets (30% validation)
- Modeling: Stepwise logistic regression and gradient boosting classifier
- Model Storage: Stores the trained model for further scoring and evaluation

## Output
All output including model selection, scoring, and predictors are displayed inline

## Execution Order
There is no specified order; the SAS program, SAS notebook, and Python notebook carry out similar tasks independently.

## Contact

- Lleyton Seymour (lleyton.seymour@sas.com)
- Joseph Henry (joseph.henry@sas.com)

## Change Log
Version 1.0.0 (10FEB2025)

Initial release on GitHub
