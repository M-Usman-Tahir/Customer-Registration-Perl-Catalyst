# Customer-Registration-Perl-Catalyst

## Perl Installation
Visit the link [here](https://www.perl.org/get.html) to download and install the perl to your system.
## Tools
`Catalyst` is used as the framework to display the perl on the frontend.
Type following command in the terminal to install Catalyst.
```
cpanm Catalyst::Devel
```
Also install `Background proc` for better real time debuging.
```
cpanm Proc::Background
```
## How to make a basic catalyst app
Type following command in the terminal (in the directory where you want to create the app)
```
catalyst App_name
```
Change your directory to the App directory
```
cd App_name
```
Type the following command and it will check if all the dependencies are installed and if all the files listed in the `MANIFEST` file were included. Then it will generate the `Makefile` itself without any extension.
```
perl Makefile.PL
```
## How to run the app
Now type the following command to run and debug the app. It will restart the app when changes are made (proc::background is necessary to be installed if you are using `-r` in the next line.)
```
perl ./script/App_name_server.pl -d -r
```
