# Generated from json/callargs_class.tt

package Paws::Support::DescribeSeverityLevels;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Support::Types qw//;
  has Language => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSeverityLevels');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Support::DescribeSeverityLevelsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Language' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Language' => 'language'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSeverityLevels - Arguments for method DescribeSeverityLevels on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSeverityLevels on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeSeverityLevels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSeverityLevels.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeSeverityLevelsResponse = $support->DescribeSeverityLevels(
      Language => 'MyLanguage',    # OPTIONAL
    );

    # Results:
    my $SeverityLevels = $DescribeSeverityLevelsResponse->SeverityLevels;

    # Returns a L<Paws::Support::DescribeSeverityLevelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeSeverityLevels>

=head1 ATTRIBUTES


=head2 Language => Str

The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSeverityLevels in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

