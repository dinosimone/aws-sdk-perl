# Generated from default/object.tt
package Paws::WAF::SqlInjectionMatchSetUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_SqlInjectionMatchTuple/;
  has Action => (is => 'ro', isa => Str, required => 1);
  has SqlInjectionMatchTuple => (is => 'ro', isa => WAF_SqlInjectionMatchTuple, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Action' => {
                             'type' => 'Str'
                           },
               'SqlInjectionMatchTuple' => {
                                             'class' => 'Paws::WAF::SqlInjectionMatchTuple',
                                             'type' => 'WAF_SqlInjectionMatchTuple'
                                           }
             },
  'IsRequired' => {
                    'Action' => 1,
                    'SqlInjectionMatchTuple' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::SqlInjectionMatchSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::SqlInjectionMatchSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., SqlInjectionMatchTuple => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::SqlInjectionMatchSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the part of a web request that you want to inspect for
snippets of malicious SQL code and indicates whether you want to add
the specification to a SqlInjectionMatchSet or delete it from a
C<SqlInjectionMatchSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specify C<INSERT> to add a SqlInjectionMatchSetUpdate to a
SqlInjectionMatchSet. Use C<DELETE> to remove a
C<SqlInjectionMatchSetUpdate> from a C<SqlInjectionMatchSet>.


=head2 B<REQUIRED> SqlInjectionMatchTuple => WAF_SqlInjectionMatchTuple

  Specifies the part of a web request that you want AWS WAF to inspect
for snippets of malicious SQL code and, if you want AWS WAF to inspect
a header, the name of the header.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

