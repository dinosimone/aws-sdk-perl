package Paws::FraudDetector::Detector;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', request_name => 'createdTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::Detector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::Detector object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., LastUpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::Detector object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The detector.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  Timestamp of when the detector was created.


=head2 Description => Str

  The detector description.


=head2 DetectorId => Str

  The detector ID.


=head2 LastUpdatedTime => Str

  Timestamp of when the detector was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

