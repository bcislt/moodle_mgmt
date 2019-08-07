#!/bin/bash
git fetch upstream
git checkout -b remotes/upstream/MOODLE_36_STABLE
git add .
git commit -a
git push origin refs/remotes/upstream/MOODLE_34_STABLE:MOODLE_34_STABLE
git push origin refs/remotes/upstream/master:master
git checkout MOODLE_25_STABLE
git pull
git checkout -b BC_MOODLE_25_STABLE
git merge MOODLE_23_STABLE
echo '########################## Now add your plugins etc. then do git add/commit/push ##########################' 