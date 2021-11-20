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
    <script src='https://use.fontawesome.com/releases/v5.15.4/js/all.js'></script>
    <title>Customer Registeration</title>
    <style>
        *{
            text-align:center;
            /* align-items:center; */
            align-self: center;
        }
        body{
            font-family:Arial, Helvetica, sans-serif;
            display:flex;
            justify-content:center;
            background-color: rgb(201, 201, 201);
        }
        input, select, option{
            text-align:left;
            display: inline-block;
            padding: 3.5px;
            margin: 2px;
            border: 0.5px solid #AAA;
            border-radius: 15px;
            border-color: rgb(3, 121, 38);
            border-width: 2px;
            width: 230px;
            padding: 7px 6px;
            margin: 4px;
            /* height:30px; */
            box-shadow: inset 0 0 3px 1px green;
        }
        input:hover{
            transform: scale(1.05, 1.05);
        }
        input:focus{
            transform: scale(1.05, 1.05);
        }
        input.button{
            text-align:center;
            color: #fff;
            background-color: rgb(104, 175, 104);
            font-weight: bold;
            font-family:'Times New Roman', Times, serif;
            margin-top: 15px;
            padding: 6.5px 10px;
            box-shadow: inset 5px 5px 10px 3px #00a800,inset -5px -5px 10px 3px green;
        }
        input.button:hover{
            cursor: pointer;
            box-shadow: inset -5px -5px 10px 3px #00a800,inset 5px 5px 10px 3px green;
            transform: scale(1, 1);
        }
        .reg:hover{
            font-size: 19px;
        }
        .block{
            display:flex;
            justify-content:center;
            border-radius: 20px;
            background-color: rgb(241, 241, 241);
            margin-top:80px;
            box-shadow:inset 5px 5px 20px 2px #888, inset -5px -5px 20px 2px #fff;
        }
        .loginBlock{
            width: 330px;
            height:420px;
        }
        .signupBlock{
            padding-left: 50px;
            padding-right: 50px;
            padding-top: 20px;
            padding-bottom: 10px;
        }
        .logo{
            width: 150px;
            border-radius: 50px;
            margin-top: 10px;
            box-shadow:  5px 7px 20px 2px #999, -5px -7px 20px 2px #fff;
        }
        /* .logo:hover{
            transform: rotateY(360deg);
            transition: 1.5s;
        } */
        .para{
            font-style: italic;
        }
        .Address{
            width: 110px;
        }
        input#male, input#female{
            width: 14px;
            box-shadow: 0 10 3px 1px green;
            border-radius:50%;
            margin-left: 20px;
        }
        .Labels{
            text-align: justify;
        }form{
        }
    </style>
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
    <script>
        \$(document).ready(function() {

            let lightGreen = 'rgb(3, 121, 38)';
            wrong = (id)=>{
                \$(id).css('box-shadow', 'inset 0 0 3px 1px red');
                \$(id).css('border-color', 'red');
            }
            correct = (id)=>{
                \$(id).css('box-shadow', 'inset 0 0 3px 1px green');
                \$(id).css('border-color', lightGreen);
            }
            getEmail = ()=>{
                let email = \$('#email');
                let regex = new RegExp('^([a-zA-Z0-9_+.-])+@(([a-zA-Z0-9-])+\\.)+([a-zA-Z0-9]{2,6})+\$');
                if((email.val().length==0)||(!regex.test(email.val()))) {
                    wrong(email);
                }
                else correct(email);
            }
            getPassword = ()=>{
                let Pass = \$('#pswrd');
                let Cpass = \$('#Cpswrd');
            
                console.log(Pass.val()!=Cpass.val());
                console.log(Pass.val().length==0);
                if(Pass.val()!=Cpass.val()||Pass.val().length<8){
                    wrong(Pass);
                    wrong(Cpass);
                }else{
                    correct(Pass);
                    correct(Cpass);
                }
            }
            getOthers = () => {
                let name = \$('#fname');
                let lname = \$('#lname');
                let StNum = \$('#Snum');
                let city = \$('#city');
                let postalCode = \$('#postalCode');
                if(name.val().length==0) wrong(name);
                else correct(name);
                if(lname.val().length==0) wrong(lname);
                else correct(lname);
                if(StNum.val().length==0) wrong(StNum);
                else correct(StNum);
                if(city.val().length==0) wrong(city);
                else correct(city);
                if(postalCode.val().length==0) wrong(postalCode);
                else correct(postalCode);
            }
            \$('#button').click(()=>{
                getOthers();
                getEmail();
                getPassword();
            });
        });
    </script>
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
