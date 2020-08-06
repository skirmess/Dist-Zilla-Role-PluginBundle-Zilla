# NAME

Dist::Zilla::Role::PluginBundle::Zilla - adds the zilla object and the logger to your bundles

# VERSION

Version 0.001

# SYNOPSIS

## Dist::Zilla::Role::PluginBundle

    package Dist::Zilla::PluginBundle::MyBundle;

    use Moose;
    with 'Dist::Zilla::Role::PluginBundle::Zilla';

    sub bundle_config {
        my ( $class, $section ) = @_;

        my $self = $class->new($section);
        $self->log('Hello from your friendly bundle! We are running in ' . $self->zilla->root);
        $self->log_fatal('Something went wrong...');

        return;
    }

## Dist::Zilla::Role::PluginBundle::Easy

    package Dist::Zilla::PluginBundle::MyBundle;

    use Moose;
    with 'Dist::Zilla::Role::PluginBundle::Easy';
    with 'Dist::Zilla::Role::PluginBundle::Zilla';

    sub configure {
        my ($self) = @_;

        $self->log('Hello from your friendly bundle! We are running in ' . $self->zilla->root);
        $self->log_fatal('Something went wrong...');

        return;
    }

# DESCRIPTION

This role makes the `zilla` object available and adds the `log`,
`log_fatal`, and `log_debug` methods to your bundle.

This allows you to use the same logging procedure in your bundle that plugins
use.

If you use [Dist::Zilla::Role::PluginBundle::Easy](https://metacpan.org/pod/Dist::Zilla::Role::PluginBundle::Easy) you have to import these
two roles with two separate calls to `with` because both roles declare the
name attribute.

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/skirmess/Dist-Zilla-Role-PluginBundle-Zilla/issues](https://github.com/skirmess/Dist-Zilla-Role-PluginBundle-Zilla/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software. The code repository is available for
public review and contribution under the terms of the license.

[https://github.com/skirmess/Dist-Zilla-Role-PluginBundle-Zilla](https://github.com/skirmess/Dist-Zilla-Role-PluginBundle-Zilla)

    git clone https://github.com/skirmess/Dist-Zilla-Role-PluginBundle-Zilla.git

# AUTHOR

Sven Kirmess <sven.kirmess@kzone.ch>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2020 by Sven Kirmess.

This is free software, licensed under:

    The (two-clause) FreeBSD License

# SEE ALSO

[Dist::Zilla::Role::PluginBundle](https://metacpan.org/pod/Dist::Zilla::Role::PluginBundle),
[Dist::Zilla::Role::PluginBundle::Easy](https://metacpan.org/pod/Dist::Zilla::Role::PluginBundle::Easy)
