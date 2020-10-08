
use common::sense;

use Test2::V0 '!meta';

use URI;

use WWW::WTF::UserAgent::LWP;

my $ua = WWW::WTF::UserAgent::LWP->new;

my $http_resource = $ua->get(URI->new('http://hqvm-beta-1.atikon.io:9999/index.html'));

my @links = $http_resource->get_links();

is(scalar @links, 1);

done_testing();
