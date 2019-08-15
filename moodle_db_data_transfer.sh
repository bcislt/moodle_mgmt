#!/bin/bash
#Script to send files from moodletest to moodlelive
scp -r /home/cb/mdl_live_upgrade/mainmoodledump.sql cbradley@gs-moodle:/home/cbradley/mdl_live_upgrade
echo "Moodle database sent to destination server"
scp -r /home/cb/mdl_live_upgrade/enrollmentsdump.sql cbradley@gs-moodle:/home/cbradley/mdl_live_upgrade
echo "Enrolments database sent to destination server"
scp -r /home/cb/mdl_live_upgrade/moodledata cbradley@gs-moodle:/home/cbradley/mdl_live_upgrade
echo "moodledata sent to destination server"
scp -r /home/cb/mdl_live_upgrade/moodle cbradley@gs-moodle:/home/cbradley/mdl_live_upgrade
echo "moodle core sent to destination server"
