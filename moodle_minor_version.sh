#!/bin/bash
git fetch upstream
git checkout -b remotes/upstream/MOODLE_36_STABLE
git add .
git commit -a
git push origin refs/remotes/upstream/MOODLE_36_STABLE:MOODLE_36_STABLE
git push origin refs/remotes/upstream/master:master
git checkout MOODLE_36_STABLE
git pull
git checkout -b BC_MOODLE_36_STABLE
git merge MOODLE_36_STABLE
echo '########################## Now add your plugins etc. then do git add/commit/push ##########################' 