package Paws::FraudDetector::ExternalModel;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has InputConfiguration => (is => 'ro', isa => 'Paws::FraudDetector::ModelInputConfiguration', request_name => 'inputConfiguration', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has ModelEndpoint => (is => 'ro', isa => 'Str', request_name => 'modelEndpoint', traits => ['NameInRequest']);
  has ModelEndpointStatus => (is => 'ro', isa => 'Str', request_name => 'modelEndpointStatus', traits => ['NameInRequest']);
  has ModelSource => (is => 'ro', isa => 'Str', request_name => 'modelSource', traits => ['NameInRequest']);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::FraudDetector::ModelOutputConfiguration', request_name => 'outputConfiguration', traits => ['NameInRequest']);
  has Role => (is => 'ro', isa => 'Paws::FraudDetector::Role', request_name => 'role', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ExternalModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ExternalModel object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., Role => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ExternalModel object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The Amazon SageMaker model.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  Timestamp of when the model was last created.


=head2 InputConfiguration => L<Paws::FraudDetector::ModelInputConfiguration>

  The input configuration.


=head2 LastUpdatedTime => Str

  Timestamp of when the model was last updated.


=head2 ModelEndpoint => Str

  The Amazon SageMaker model endpoints.


=head2 ModelEndpointStatus => Str

  The Amazon Fraud Detector status for the external model endpoint


=head2 ModelSource => Str

  The source of the model.


=head2 OutputConfiguration => L<Paws::FraudDetector::ModelOutputConfiguration>

  The output configuration.


=head2 Role => L<Paws::FraudDetector::Role>

  The role used to invoke the model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

