
package Paws::Greengrass::CreateSubscriptionDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Subscription/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has SubscriptionDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Subscriptions => (is => 'ro', isa => ArrayRef[Greengrass_Subscription], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSubscriptionDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateSubscriptionDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubscriptionDefinitionId' => {
                                               'type' => 'Str'
                                             },
               'Subscriptions' => {
                                    'class' => 'Paws::Greengrass::Subscription',
                                    'type' => 'ArrayRef[Greengrass_Subscription]'
                                  },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    }
             },
  'ParamInURI' => {
                    'SubscriptionDefinitionId' => 'SubscriptionDefinitionId'
                  },
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'IsRequired' => {
                    'SubscriptionDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSubscriptionDefinitionVersion - Arguments for method CreateSubscriptionDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateSubscriptionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateSubscriptionDefinitionVersionResponse =
      $greengrass->CreateSubscriptionDefinitionVersion(
      SubscriptionDefinitionId => 'My__string',
      AmznClientToken          => 'My__string',    # OPTIONAL
      Subscriptions            => [
        {
          Id      => 'My__string',
          Source  => 'My__string',
          Subject => 'My__string',
          Target  => 'My__string',
        },
        ...
      ],                                           # OPTIONAL
      );

    # Results:
    my $Arn = $CreateSubscriptionDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateSubscriptionDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateSubscriptionDefinitionVersionResponse->Id;
    my $Version = $CreateSubscriptionDefinitionVersionResponse->Version;

# Returns a L<Paws::Greengrass::CreateSubscriptionDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateSubscriptionDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.



=head2 Subscriptions => ArrayRef[Greengrass_Subscription]

A list of subscriptions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

