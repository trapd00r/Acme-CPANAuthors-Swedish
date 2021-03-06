use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Acme::CPANAuthors::Swedish',
    AUTHOR        => 'Magnus Woldrich <m@japh.se>',
    VERSION_FROM  => 'lib/Acme/CPANAuthors/Swedish.pm',
    ABSTRACT_FROM => 'lib/Acme/CPANAuthors/Swedish.pm',
    PREREQ_PM => {
        'Acme::CPANAuthors'         => 0,
        'Test::More'                => 0.47,
    },
    ($ExtUtils::MakeMaker::VERSION >= 6.31
        ? ( LICENSE => 'perl' )
        : ()
    ),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/trapd00r/Acme-CPANAuthors-Swedish.git',
                web  => 'https://github.com/trapd00r/Acme-CPANAuthors-Swedish',
            },
        }})
     : ()
    ),
);
