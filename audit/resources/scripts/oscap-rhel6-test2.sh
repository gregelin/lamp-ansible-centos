#!/bin/sh

echo "--profile test"

oscap xccdf eval --profile test \
	--results /vagrant/audit/reports/results-test-micro.xml \
	--report /vagrant/audit/reports/results-test-micro.html \
	--cpe /vagrant/audit/resources/ssg/content/ssg-rhel6-cpe-dictionary.xml \
	/vagrant/audit/resources/ssg/content/ssg-rhel6-test2-xccdf.xml ; true

#
# Gotchas
#
# Adding the `; true` allows Vagrant to continue and not trap for exit status code `0` from scap run. 
# From oscap man page: 
#    Probe the system and evaluate all definitions from OVAL Definition file. Print result of  each  definition
#    to standard output. The return code is 0 after a  successful evaluation. On error, value 1 is returned.
#
