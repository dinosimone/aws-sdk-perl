package Paws::Rekognition::CompareFacesMatch;
  use Moose;
  has Face => (is => 'ro', isa => 'Paws::Rekognition::ComparedFace');
  has Similarity => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CompareFacesMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::CompareFacesMatch object:

  $service_obj->Method(Att1 => { Face => $value, ..., Similarity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::CompareFacesMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Face

=head1 DESCRIPTION

Provide the bounding box, confidence that the bounding box actually
contains a face, and the similarity between the face in the bounding
box and the face in the source image.

=head1 ATTRIBUTES


=head2 Face => L<Paws::Rekognition::ComparedFace>

  Provides face metadata (bounding box and confidence that the bounding
box actually contains a face).


=head2 Similarity => Num

  Level of confidence that the faces match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
