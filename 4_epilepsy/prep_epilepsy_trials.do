

**********************************
*prep_epilepsy_trials.do
**********************************    
    
	
cd "/Users/mouellet/Dropbox/HBS/ARIEL/Lars_Pauline" 

u 0_ctgov_digital/digital_trials.dta, clear
*fill in brief_summary
merge 1:1 nct_id using 0_ctgov_digital/dta/brief_summaries_renamed.dta,keep(1 3 4 5) update

*limit conditions 
local var "conditions brief_summary"
foreach z of local var{
replace `z'=trim(`z')
replace `z'=lower(`z')
}

count
*12724

gen keep=1 if strpos(conditions,"epilepsy")
keep if keep==1
count
*36

*limit to 2010-2020 trials only
gen year=year(start_date)
keep if year<=2020 & year>=2010
move year study_type
count
*30

*save final dataset
compress
save 5_epilepsy/ep_digital_trials.dta, replace
export excel using 5_epilepsy/ep_digital_trials.xlsx, replace firstrow(variables)
