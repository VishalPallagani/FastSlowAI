#!/usr/bin/env bash
#This script prints out the time for executing a plan from an E-PDDL file domain ($1) and file instance ($2)
#USAGE EXAMPLE (from the project root folder): ". scripts/EPDDL_scripts/single_exec.sh exp/EPDDL/coininthebox/coininthebox.epddl exp/EPDDL/coininthebox/pb1.epddl"
#	where " exp/EPPDL/" is the path to domain and instance (possibly different)

#The result of the conversion are stored in exp/tmp/
#The results of the execution are stored in a tmp file in out/EFP_comparison/findingplan/INSTANCENAME/


TIMEOUT="30m";

python3 E-PDDL/EPDDL.py $1 $2 > /dev/null

INSTANCENAME=$(<exp/tmp/lastcreated.tmp)

#REMOVE OLD COPIES
#if [ -d out/EFP_comparison/findingplan ] ; then
  if [ -f out/EFP_comparison/findingplan/"${INSTANCENAME##*/}" ] ; then
      rm out/EFP_comparison/findingplan/"${INSTANCENAME##*/}"
  fi
#fi


timeout $TIMEOUT bin/efp.out "exp/tmp/$INSTANCENAME" -results_file -check_visited -st POSS > findingplan_comparison.tmp
exit_status=$?;

if [[ $exit_status -eq 124 ]]; then

            TOPRINT="EFP Version on POSS with VISTED-STATE TIMED-OUT"
            echo -e "$TOPRINT" >> out/EFP_comparison/findingplan/"${$INSTANCENAME##*/}";

	else
            grep -w "Executed actions:" findingplan_comparison.tmp >> out/EFP_comparison/findingplan/"${INSTANCENAME##*/}";
            grep -w "Plan Length:" findingplan_comparison.tmp  >> out/EFP_comparison/findingplan/"${INSTANCENAME##*/}";
	fi;


    echo $'\n' >> out/EFP_comparison/findingplan/"${INSTANCENAME##*/}";

  #  sleep 10s;

rm findingplan_comparison.tmp;
