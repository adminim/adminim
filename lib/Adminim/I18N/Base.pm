package Adminim::I18N::Base;

use Mojo::Base 'Adminim::I18N';

use Carp 'croak';
use Mojo::Home;
use Mojo::Asset::File;

# return lexicon hash (like hash reference)
sub get_lexicon {
    my $class = shift;
    
    my $content;
    if ( $class =~ /::([a-z]+)$/ ) {
        $content = Mojo::Asset::File->new()->path(
                        Mojo::Home->new()->detect()->rel_file(
                            "templates/lang/$1.txt"
                        ) 
                    )->slurp;
    } else {
        croak(qq/Can't parse class $class/);
    }

    my $l = {};
    for my $s ( split "\n" => $content ) {
        my ($k,$v) = split ' === ' => $s;
        utf8::decode($v); $l->{$k} = $v;
    }
    
    return $l
}

1;

=head2 LICENSE AND COPYRIGHT

    Copyright (c) 2011 (team@adminim.net)
    All rights reserved.

=cut

__END__

