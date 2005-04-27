package Kwiki::Users::Remote;
use Kwiki::Users -Base;

our $VERSION = "0.02";

const class_title => 'Kwiki users from HTTP authentication';
const user_class => 'Kwiki::User::Remote';

package Kwiki::User::Remote;
use base 'Kwiki::User';
                   
const name => $ENV{REMOTE_USER};
const id => $ENV{REMOTE_USER};
    
__DATA__

=head1 NAME 

Kwiki::Users::Remote - automatically set Kwiki user name from HTTP authentication

=head1 SYNOPSIS

 $ cd /path/to/kwiki
 $ echo "users_class: Kwiki::Users::Remote" >> config.yaml

In your Apache configuration:

    <Location /kwiki>
        AuthName     "my kwiki"
        AuthType     Basic
        AuthUserFile /path/to/htpasswd
        Require      valid-user
    </Location>

Optionally, to display the user name:

 $ cd /path/to/kwiki
 $ kwiki -add Kwiki::UserName::Remote

=head1 DESCRIPTION

When using HTTP authentication for your Kwiki, use this module to automatically
set the user's name from the username they logged in with. This name will
appear in any Recent Changes listing.

You might also want to use L<Kwiki::UserName::Remote>.

=head1 AUTHORS

Ian Langworth <langworth.com> 

=head1 SEE ALSO

L<Kwiki>, L<Kwiki::UserName::Remote>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004, 2005 by Ian Langworth

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

