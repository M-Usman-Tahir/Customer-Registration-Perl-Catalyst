#!F:\PERL\perl\bin\perl.exe
use strict;
use warnings;
use Test::More;

use Catalyst::Test 'Customer_Registration';

ok( request('/')->is_success, 'Request should succeed' );

done_testing();
