# Targets to run itests on each distro using the special stock test containers
itest_lucid:
	rake itest_lucid
itest_precise:
	rake itest_precise
itest_trusty:
	rake itest_trusty
itest_xenial:
	rake itest_xenial

clean:
	rake clean
