use strict;
use warnings;

use Customer_Registration;

my $app = Customer_Registration->apply_default_middlewares(Customer_Registration->psgi_app);
$app;

