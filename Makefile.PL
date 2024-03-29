use 5.006;
use strict;
use warnings;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
    ABSTRACT           => 'adds the zilla object and the logger to your bundles',
    AUTHOR             => 'Sven Kirmess <sven.kirmess@kzone.ch>',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    DISTNAME         => 'Dist-Zilla-Role-PluginBundle-Zilla',
    LICENSE          => 'open_source',
    MIN_PERL_VERSION => '5.006',
    NAME             => 'Dist::Zilla::Role::PluginBundle::Zilla',
    PREREQ_PM        => {
        'Dist::Zilla::Role::PluginBundle' => 0,
        'List::Util'                      => 0,
        'Moose::Role'                     => 0,
        'Moose::Util::TypeConstraints'    => 0,
        'Scalar::Util'                    => 0,
        'namespace::autoclean'            => 0,
        strict                            => 0,
        warnings                          => 0,
    },
    TEST_REQUIRES => {
        Carp                                    => 0,
        Cwd                                     => 0,
        'Dist::Zilla::Role::PluginBundle::Easy' => 0,
        Exporter                                => 0,
        'File::Basename'                        => 0,
        'File::Path'                            => '2.07',
        'File::Spec'                            => 0,
        'File::Spec::Functions'                 => 0,
        Moose                                   => 0,
        'Test::DZil'                            => 0,
        'Test::More'                            => '0.88',
        lib                                     => 0,
    },
    VERSION => '0.001',
    test    => {
        TESTS => 't/*.t',
    },
);

my %FallbackPrereqs = (
    Carp                                    => 0,
    Cwd                                     => 0,
    'Dist::Zilla::Role::PluginBundle'       => 0,
    'Dist::Zilla::Role::PluginBundle::Easy' => 0,
    Exporter                                => 0,
    'File::Basename'                        => 0,
    'File::Path'                            => '2.07',
    'File::Spec'                            => 0,
    'File::Spec::Functions'                 => 0,
    'List::Util'                            => 0,
    Moose                                   => 0,
    'Moose::Role'                           => 0,
    'Moose::Util::TypeConstraints'          => 0,
    'Scalar::Util'                          => 0,
    'Test::DZil'                            => 0,
    'Test::More'                            => '0.88',
    lib                                     => 0,
    'namespace::autoclean'                  => 0,
    strict                                  => 0,
    warnings                                => 0,
);

if ( !eval { ExtUtils::MakeMaker->VERSION('6.63_03') } ) {
    delete $WriteMakefileArgs{TEST_REQUIRES};
    delete $WriteMakefileArgs{BUILD_REQUIRES};
    $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

if ( !eval { ExtUtils::MakeMaker->VERSION(6.52) } ) {
    delete $WriteMakefileArgs{CONFIGURE_REQUIRES};
}

WriteMakefile(%WriteMakefileArgs);

# vim: ts=4 sts=4 sw=4 et: syntax=perl
