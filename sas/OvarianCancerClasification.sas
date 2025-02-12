libname myviya sasviya;
PROC IMPORT DATAFILE="&WORKSPACE_PATH./Ovarian-Cancer-Classification/data/ovarian_cancer_dataset.csv"
	DBMS=CSV
    replace
	OUT=myviya.ovariandata;
	GETNAMES=YES;
RUN;

proc logselect 
	data=myviya.ovariandata;
	partition fraction(validate=0.3);
	class 'Histologic types of cancer'n 'FIGO stage of tumor'n;
	model Cancer=age 'CA-125 (U/mL)'n 'AST (U/L)'n 'ALT (U/L)'n 'Albumin (g/dL)'n 'Sodium (mmol/L)'n
	          'Creatinine (mg/dL)'n 'White blood cell (/uL)'n 'Lymph (/uL)'n 'CA19-9 (U/mL)'n
			  'Fibrinogen (mg/dL)'n;
	selection 
		method=stepwise
        (select=sl stop=sl slentry=0.05 slstay=0.05) 
		hierarchy=single;
	output 
		out=myviya.out_score_logselect copyvars=(_all_);
	store
		out=myviya.out_model_logselect;
run;