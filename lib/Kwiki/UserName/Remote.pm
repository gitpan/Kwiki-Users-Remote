package Kwiki::UserName::Remote;
use strict;
use warnings;
use Kwiki::UserName '-Base';
use mixin 'Kwiki::Installer';

our $VERSION = "0.01";

const class_id => 'user_name';
const class_title => 'Kwiki user name from HTTP authentication';
const css_file => 'user_name.css';

sub register {
    my $registry = shift;
    $registry->add(preload => 'user_name');
}

1;

__DATA__

=head1 NAME 

Kwiki::UserName::Remote - display the remote user name

=head1 DESCRIPTION

See L<Kwiki::Users::Remote> for more information.

=head1 AUTHORS

Ian Langworth <langworth.com> 

=head1 SEE ALSO

L<Kwiki>, L<Kwiki::Users::Remote>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Ian Langworth

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__css/user_name.css__
div #user_name_title {
    font-size: small;
    float: right;
}
__template/tt2/user_name_title.html__
<!-- BEGIN user_name_title.html -->
<div id="user_name_title">
<em>(Logged in as 
<a href="[% script_name %]?[% hub.users.current.name %]">
[%- hub.users.current.name || '???' -%]
</a>)
</em>
</div>
<!-- END user_name_title.html -->


