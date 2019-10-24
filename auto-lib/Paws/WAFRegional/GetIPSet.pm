# Generated from json/callargs_class.tt

package Paws::WAFRegional::GetIPSet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw//;
  has IPSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetIPSet');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAFRegional::GetIPSetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IPSetId' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'IPSetId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetIPSet - Arguments for method GetIPSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIPSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIPSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To get an IP set
    # The following example returns the details of an IP match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetIPSetResponse =
      $waf -
      regional->GetIPSet(
      'IPSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5' );

    # Results:
    my $IPSet = $GetIPSetResponse->IPSet;

    # Returns a L<Paws::WAFRegional::GetIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IPSetId => Str

The C<IPSetId> of the IPSet that you want to get. C<IPSetId> is
returned by CreateIPSet and by ListIPSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIPSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

