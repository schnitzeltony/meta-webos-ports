# Copyright (c) 2012-2014 LG Electronics, Inc.

# All the original recipe does is stage a tarball and some autotools files;
# nothing compiled.
inherit allarch

# Nothing in mm-common is installed on the target => the base package should
# be empty. What's below works because ${PN}-dev is packaged ahead of ${PN}.
FILES_${PN}-dev += "${FILES_${PN}}"

# An empty package is needed to satisfy package dependencies in certain cases.
ALLOW_EMPTY_${PN} = "1"
