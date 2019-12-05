package Paws::FraudDetector::ModelOutputConfiguration;
  use Moose;
  has CsvIndexToVariableMap => (is => 'ro', isa => 'Paws::FraudDetector::CsvIndexToVariableMap', request_name => 'csvIndexToVariableMap', traits => ['NameInRequest']);
  has Format => (is => 'ro', isa => 'Str', request_name => 'format', traits => ['NameInRequest'], required => 1);
  has JsonKeyToVariableMap => (is => 'ro', isa => 'Paws::FraudDetector::JsonKeyToVariableMap', request_name => 'jsonKeyToVariableMap', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::ModelOutputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::ModelOutputConfiguration object:

  $service_obj->Method(Att1 => { CsvIndexToVariableMap => $value, ..., JsonKeyToVariableMap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::ModelOutputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CsvIndexToVariableMap

=head1 DESCRIPTION

Provides the model output configuration.

=head1 ATTRIBUTES


=head2 CsvIndexToVariableMap => L<Paws::FraudDetector::CsvIndexToVariableMap>

  A map of CSV index values in the SageMaker response to the Amazon Fraud
Detector variables.


=head2 B<REQUIRED> Format => Str

  The format of the model output configuration.


=head2 JsonKeyToVariableMap => L<Paws::FraudDetector::JsonKeyToVariableMap>

  A map of JSON keys in response from SageMaker to the Amazon Fraud
Detector variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

