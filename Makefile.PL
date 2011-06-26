use inc::Module::Install;

name     'Algorithm::Knapsack';
all_from 'lib/Algorithm/Knapsack/HS.pm';
author   q{Steven Jenkins <steven.jenkins@gmail.com>};
license  'lgpl';

build_requires 'Test::More';

auto_install;

WriteAll;

