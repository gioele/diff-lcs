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

def _paragraphs_of(path, n)
	# FIXME: teach `Bones::summary` to fall back to the very first paragraph
	File.read(path).delete("\r").
	     split(/\n\n+/)[n].
	     map { |para| para.gsub("\n", ' ') }
end

Bones {
	name     'diff-lcs'
	authors  ['Austin Ziegler']
	email    ['diff-lcs@halostatue.ca']
	url      'http://rubyforge.org/projects/ruwiki/'

	version  Diff::LCS::VERSION

	readme_file  'README.md'
	history_file 'ChangeLog'
	ignore_file  '.gitignore'

	summary      _paragraphs_of(readme_file, 1..1).join("\n")
	description  _paragraphs_of(readme_file, 3..3).join("\n")
}

