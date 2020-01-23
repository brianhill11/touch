# Automatically touch Hoffman2 $SCRATCH files on a weely basis

This repo contains scripts for creating a cron job which runs weekly and touches 
all of the files in your $SCRATCH directory, so that they do not get deleted. 

The code assumes you've cloned the repo in your $HOME directory. If cloned in a different location, the file paths in 
qsub_touch.sh and cron-file.txt need to be updated. 

**NOTE**: this is not a fail-proof method, so please make sure any important
files are moved to a file location that is safe/backed up. 

Instructions:
1. Make sure that qsub_touch.sh and run_touch.sh have user execute permissions. If not, run: `chmod u+x *_touch.sh`
2. If the repo was not cloned in your $HOME directory:
  * Modify the cron-file.txt file to point to your qsub_touch.sh file
  * Modify the qsub_touch.sh file to change to the code repo
3. Install the crontab from the cron file (NOTE: this will destroy existing crontab entries!): `crontab cron-file.txt`
4. Verify the crontab was installed: `crontab -l`
