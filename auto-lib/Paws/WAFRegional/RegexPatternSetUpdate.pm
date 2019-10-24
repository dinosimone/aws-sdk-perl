# Generated from default/object.tt
package Paws::WAFRegional::RegexPatternSetUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw//;
  has Action => (is => 'ro', isa => Str, required => 1);
  has RegexPatternString => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexPatternString' => {
                                         'type' => 'Str'
                                       },
               'Action' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'RegexPatternString' => 1,
                    'Action' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RegexPatternSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RegexPatternSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., RegexPatternString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RegexPatternSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

In an UpdateRegexPatternSet request, C<RegexPatternSetUpdate> specifies
whether to insert or delete a C<RegexPatternString> and includes the
settings for the C<RegexPatternString>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specifies whether to insert or delete a C<RegexPatternString>.


=head2 B<REQUIRED> RegexPatternString => Str

  Specifies the regular expression (regex) pattern that you want AWS WAF
to search for, such as C<B[a@]dB[o0]t>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

