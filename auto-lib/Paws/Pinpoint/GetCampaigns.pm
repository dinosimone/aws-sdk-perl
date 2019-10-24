
package Paws::Pinpoint::GetCampaigns;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PageSize => (is => 'ro', isa => Str, predicate => 1);
  has Token => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetCampaigns');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/campaigns');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::GetCampaignsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageSize' => {
                               'type' => 'Str'
                             },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Token' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id'
                  },
  'ParamInQuery' => {
                      'PageSize' => 'page-size',
                      'Token' => 'token'
                    },
  'IsRequired' => {
                    'ApplicationId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaigns - Arguments for method GetCampaigns on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCampaigns on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetCampaigns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCampaigns.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetCampaignsResponse = $pinpoint->GetCampaigns(
      ApplicationId => 'My__string',
      PageSize      => 'My__string',    # OPTIONAL
      Token         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $CampaignsResponse = $GetCampaignsResponse->CampaignsResponse;

    # Returns a L<Paws::Pinpoint::GetCampaignsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetCampaigns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 PageSize => Str

The maximum number of items to include on each page in a paginated
response.



=head2 Token => Str

The NextToken string that specifies which page of results to return in
a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCampaigns in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

