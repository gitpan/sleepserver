
use strict;
use warnings;
use Module::Build;
my $build_class = 'Module::Build';

my $builder = $build_class->new(
  dist_name => 'sleepserver',
  dist_version_from => 'bin/sleepserver',
  dist_author => ['Eric Wilhelm @ <ewilhelm at cpan dot org>'],
  dist_version => 'v0.0.1',

  license             => 'perl',
  requires => {
    'HTTP::Server::Simple::CGI' => 0,
  },
  build_requires => {
    'Module::Build' => 0.26,
    'Test::More'    => 0,
  },
  add_to_cleanup      => [ qw(sleepserver-* META.yml)],
  # create_makefile_pl => 'passthrough',
  meta_merge => {

    provides => {
      'sleepserver' => {
        file => 'bin/sleepserver',
        version => 'v0.0.1',
      }
    },

    resources => {
      homepage =>
        'http://scratchcomputing.com/',
      bugtracker =>
        'http://rt.cpan.org/NoAuth/Bugs.html?Dist=sleepserver',
      #MailingList => 'mailto:...',
      repository =>
        'http://scratchcomputing.com/svn/sleepserver/trunk',
    }
  },
);

$builder->create_build_script();

# vi:syntax=perl:ts=2:sw=2:et:sta
