package Paws::EC2::ImportInstanceVolumeDetailItem;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw/EC2_DiskImageDescription EC2_DiskImageVolumeDescription/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has BytesConverted => (is => 'ro', isa => Int);
  has Description => (is => 'ro', isa => Str);
  has Image => (is => 'ro', isa => EC2_DiskImageDescription);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Volume => (is => 'ro', isa => EC2_DiskImageVolumeDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Volume' => {
                             'class' => 'Paws::EC2::DiskImageVolumeDescription',
                             'type' => 'EC2_DiskImageVolumeDescription'
                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'BytesConverted' => {
                                     'type' => 'Int'
                                   },
               'Image' => {
                            'class' => 'Paws::EC2::DiskImageDescription',
                            'type' => 'EC2_DiskImageDescription'
                          },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Volume' => 'volume',
                       'Status' => 'status',
                       'BytesConverted' => 'bytesConverted',
                       'Image' => 'image',
                       'StatusMessage' => 'statusMessage',
                       'Description' => 'description',
                       'AvailabilityZone' => 'availabilityZone'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceVolumeDetailItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportInstanceVolumeDetailItem object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Volume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportInstanceVolumeDetailItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone where the resulting instance will reside.


=head2 BytesConverted => Int

  The number of bytes converted so far.


=head2 Description => Str

  A description of the task.


=head2 Image => EC2_DiskImageDescription

  The image.


=head2 Status => Str

  The status of the import of this particular disk image.


=head2 StatusMessage => Str

  The status information or errors related to the disk image.


=head2 Volume => EC2_DiskImageVolumeDescription

  The volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
