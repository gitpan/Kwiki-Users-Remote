use inc::Module::Install;

name('Kwiki-Users-Remote');
abstract('automatically set Kwiki user name from HTTP authentication');
author('Ian Langworth <langworth.com>');
version_from('lib/Kwiki/Users/Remote.pm');
license('perl');

requires(qw(
    perl 5.6.1
    Kwiki 0.32
    Kwiki::Users
    Kwiki::UserName
));

check_nmake();

&WriteAll();
