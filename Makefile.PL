
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'PostgreSQL::PLPerl::Call',
                       'DISTNAME' => 'PostgreSQL-PLPerl-Call',
                       'AUTHOR' => 'Tim Bunce <Tim.Bunce@pobox.com>',
                       'ABSTRACT' => 'Simple interface for calling SQL functions from PostgreSQL PL/Perl',
                       'EXE_FILES' => [],
                       'VERSION' => '1.004',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'ExtUtils::MakeMaker' => '6.11'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



