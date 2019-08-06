#!/bin/bash
git clone https://github.com/bcislt/moodle moodle
cd moodle
git remote add upstream https://github.com/moodle/moodle
git fetch upstream
git branch --track MOODLE_36_STABLE upstream/MOODLE_36_STABLE
git checkout MOODLE_36_STABLE
git checkout -b BC_MOODLE_36_STABLE
git add --all
git commit -m 'New branch for Moodle 3.6'
git push --set-upstream origin BC_MOODLE_36_STABLE
echo '########################## Now add your plugins etc. before git add/commit/push ##########################' 