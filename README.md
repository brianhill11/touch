In this directory are scripts for creating a cron job which runs weekly and touches 
all of the files in your $SCRATCH directory, so that they do not get deleted. 

NOTE: this is not a fail-proof method, so please make sure any important
files are moved to a file location that is safe/backed up. 

Instructions:
1. Make sure that qsub_touch.sh and run_touch.sh have user execute permissions. If not, run: `chmod u+x *_touch.sh`
2. Modify the cron-file.txt file to point to your qsub_touch.sh file
3. Install the crontab from the cron file (NOTE: this will destroy existing crontab entries!): `crontab cron-file.txt`
4. Verify the crontab was installed: `crontab -l`
5. Modify the `cron-file.txt` to contain the path to the directory. Note that $HOME will lead to your home directory.
