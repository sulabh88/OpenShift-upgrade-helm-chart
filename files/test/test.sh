#!/bin/bash
echo 'Starting goss tests'
date
OK=0
goss -g /test/goss.yaml validate --format tap || OK=1
date
exit ${OK}
