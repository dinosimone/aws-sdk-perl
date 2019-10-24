
package Paws::Chime::ListPhoneNumberOrders;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Chime::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListPhoneNumberOrders');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/phone-number-orders');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::ListPhoneNumberOrdersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInQuery' => {
                      'NextToken' => 'next-token',
                      'MaxResults' => 'max-results'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListPhoneNumberOrders - Arguments for method ListPhoneNumberOrders on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumberOrders on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListPhoneNumberOrders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumberOrders.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListPhoneNumberOrdersResponse = $chime->ListPhoneNumberOrders(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListPhoneNumberOrdersResponse->NextToken;
    my $PhoneNumberOrders = $ListPhoneNumberOrdersResponse->PhoneNumberOrders;

    # Returns a L<Paws::Chime::ListPhoneNumberOrdersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListPhoneNumberOrders>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumberOrders in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

