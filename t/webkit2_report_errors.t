use FindBin;
use lib "$FindBin::Bin/lib";
use Test2::V0 '!meta';
use Test2::Require::Module 'WWW::WebKit2';
use WWW::WTF::Test;

my $test = WWW::WTF::Test->new();

$test->run_test(sub {
    my ($self) = @_;

    my $http_resource = $self->ua_webkit2->get($self->uri_for('/does_not_exists_expect_404.html'));

    is($http_resource->successful, 0, 'get reported failure, as expected');
});

done_testing();
