
package Paws::AlexaForBusiness::DeleteNetworkProfile;
  use Moose;
  has NetworkProfileArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::DeleteNetworkProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeleteNetworkProfile - Arguments for method DeleteNetworkProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNetworkProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method DeleteNetworkProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNetworkProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $DeleteNetworkProfileResponse = $a4b->DeleteNetworkProfile(
      NetworkProfileArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/DeleteNetworkProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkProfileArn => Str

The ARN of the network profile associated with a device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNetworkProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

