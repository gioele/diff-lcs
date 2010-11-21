#! /usr/env/bin ruby
# Copyright (c) 2004 Austin Ziegler
#
# This program is free software. It may be redistributed and/or modified under
# the terms of the GPL version 2 (or later), the Perl Artistic licence, or the
# Ruby licence.

# Includes Diff::LCS into String.

class String
  include Diff::LCS
end
