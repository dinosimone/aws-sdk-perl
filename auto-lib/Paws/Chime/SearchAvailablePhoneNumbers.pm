
package Paws::Chime::SearchAvailablePhoneNumbers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Chime::Types qw//;
  has AreaCode => (is => 'ro', isa => Str, predicate => 1);
  has City => (is => 'ro', isa => Str, predicate => 1);
  has Country => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has State => (is => 'ro', isa => Str, predicate => 1);
  has TollFreePrefix => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchAvailablePhoneNumbers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/search?type=phone-numbers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::SearchAvailablePhoneNumbersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Country' => {
                              'type' => 'Str'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TollFreePrefix' => {
                                     'type' => 'Str'
                                   },
               'City' => {
                           'type' => 'Str'
                         },
               'State' => {
                            'type' => 'Str'
                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'AreaCode' => {
                               'type' => 'Str'
                             }
             },
  'ParamInQuery' => {
                      'Country' => 'country',
                      'NextToken' => 'next-token',
                      'TollFreePrefix' => 'toll-free-prefix',
                      'City' => 'city',
                      'State' => 'state',
                      'MaxResults' => 'max-results',
                      'AreaCode' => 'area-code'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::SearchAvailablePhoneNumbers - Arguments for method SearchAvailablePhoneNumbers on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAvailablePhoneNumbers on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method SearchAvailablePhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAvailablePhoneNumbers.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $SearchAvailablePhoneNumbersResponse =
      $chime->SearchAvailablePhoneNumbers(
      AreaCode       => 'MyString',            # OPTIONAL
      City           => 'MyString',            # OPTIONAL
      Country        => 'MyString',            # OPTIONAL
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyString',            # OPTIONAL
      State          => 'MyString',            # OPTIONAL
      TollFreePrefix => 'MyTollFreePrefix',    # OPTIONAL
      );

    # Results:
    my $E164PhoneNumbers =
      $SearchAvailablePhoneNumbersResponse->E164PhoneNumbers;

    # Returns a L<Paws::Chime::SearchAvailablePhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/SearchAvailablePhoneNumbers>

=head1 ATTRIBUTES


=head2 AreaCode => Str

The area code used to filter results.



=head2 City => Str

The city used to filter results.



=head2 Country => Str

The country used to filter results.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 State => Str

The state used to filter results.



=head2 TollFreePrefix => Str

The toll-free prefix that you use to filter results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAvailablePhoneNumbers in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

