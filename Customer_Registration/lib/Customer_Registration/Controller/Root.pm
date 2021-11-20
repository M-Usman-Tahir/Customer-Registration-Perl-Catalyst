package Customer_Registration::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

Customer_Registration::Controller::Root - Root Controller for Customer_Registration

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body("
    <!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Customer Registeration</title>
</head>
<body>
    <div class='block signupBlock'>
        <div class='head'>
            <div class='icon'>
                <img class='logo' src='https://blog.eduonix.com/wp-content/uploads/2015/10/Perl-1-Introduction.png' alt='img' >
            </div>
            <div class='name'>
                <h1 class='login'>Customer Registration</h1>
            </div>
            <form action='#' class='inputs'>
                <label class='labels'>Name</label>
                <input type='text' name='fname' id='fname' placeholder='Enter your first name'>
                <input type='text' name='lname' id='lname' placeholder='Enter your last name'><br>
                <label class='labels'>Address</label>
                <input type='text' name='Snum' id='Snum' placeholder='Street number' class='Address'>
                <input type='text' name='city' id='city' placeholder='City' class='Address'>
                <input type='text' name='postal' id='postalCode' placeholder='Postal Code' class='Address'>
                
                <select name='province' id='province' class='Address'>
                    <option value='Alberta'>Alberta</option>
                    <option value='British Columbia'>British Columbia</option>
                    <option value='Manitoba'>Manitoba</option>
                    <option value='New Brunswik'>New Brunswik</option>
                    <option value='Newfoundland and Labrador'>Newfoundland and Labrador</option>
                    <option value='Nova Scotia'>Nova Scotia</option>
                    <option value='Ontario'>Ontario</option>
                    <option value='Prince Edward Island'>Prince Edward Island</option>
                    <option value='Quebec'>Quebec</option>
                    <option value='Saskatchewan'>Saskatchewan</option>
                </select><br>
                
                <label class='labels'>Email</label>
                
                <input type='email' name='email' id='email' placeholder='Enter your email'>
                
                <label class='labels'>Gender</label>
                
                <input type='radio' name='gender' id='female' value='Female'>
                <label for='female'>Female</label>
                <input type='radio' name='gender' id='male' value='Male' checked>
                <label for='male'>Male</label><br>
                
                <label class='labels'>Password</label>
                
                <input type='password' name='pswrd' id='pswrd' placeholder='Enter your password'>
                <input type='password' name='Cpswrd' id='Cpswrd' placeholder='Confirm password'><br>
                <input id='button' class='button' type='button' value='Signup'><br>
            </form>
            <p class='para'>Already have an account, <a href='#' class='reg'>Login</a></p>
        </div>
    </div>
</body>
</html>
    ");
}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
