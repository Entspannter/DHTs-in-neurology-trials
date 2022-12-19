

**********************************
*prep_alzheimer_trials.do
**********************************    
    
	
cd "/Users/mouellet/Dropbox/HBS/ARIEL/Lars_Pauline" 

u 0_ctgov_digital/dta/digital_trials.dta, clear
*fill in brief_summary
merge 1:1 nct_id using 0_ctgov_digital/dta/brief_summaries_renamed.dta,keep(1 3 4 5) update

*limit conditions 
local var "conditions brief_summary"
foreach z of local var{
replace `z'=trim(`z')
replace `z'=lower(`z')
}

count
*12954

gen keep=1 if strpos(conditions,"alzheimer")
keep if keep==1
count
*94

*limit to 2010-2021 trials only
gen year=year(start_date)
keep if year<=2021 & year>=2010
move year study_type
count
*92

*save final dataset
compress
save 2_alzheimer/az_digital_trials.dta, replace
export excel using 2_alzheimer/az_digital_trials.xlsx, replace firstrow(variables)
