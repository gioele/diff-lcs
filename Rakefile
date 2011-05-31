# Copyright (c) 2010 Gioele Barabucci
#
# This program is free software. It may be redistributed and/or modified under
# the terms of the GPL version 2 (or later), the Perl Artistic licence, or the
# Ruby licence.

begin
	require 'bones'
rescue LoadError
	abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

require 'lib/diff/lcs/version.rb'

Bones {
	name     'diff-lcs'
	authors  ['Austin Ziegler']
	email    ['diff-lcs@halostatue.ca']
	url      'http://rubyforge.org/projects/ruwiki/'

	version  Diff::LCS::VERSION

	readme_file  'README.md'
	history_file 'ChangeLog'
	ignore_file  '.gitignore'
}

