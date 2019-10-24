# Generated from json/callargs_class.tt

package Paws::Lightsail::CreateDisk;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Tag/;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DiskName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SizeInGb => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDisk');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::CreateDiskResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SizeInGb' => {
                               'type' => 'Int'
                             },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'DiskName' => {
                               'type' => 'Str'
                             },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'SizeInGb' => 'sizeInGb',
                       'Tags' => 'tags',
                       'DiskName' => 'diskName',
                       'AvailabilityZone' => 'availabilityZone'
                     },
  'IsRequired' => {
                    'SizeInGb' => 1,
                    'DiskName' => 1,
                    'AvailabilityZone' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDisk - Arguments for method CreateDisk on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDisk on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDisk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDisk.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDiskResult = $lightsail->CreateDisk(
      AvailabilityZone => 'MyNonEmptyString',
      DiskName         => 'MyResourceName',
      SizeInGb         => 1,
      Tags             => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $Operations = $CreateDiskResult->Operations;

    # Returns a L<Paws::Lightsail::CreateDiskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDisk>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create the disk (e.g.,
C<us-east-2a>). Choose the same Availability Zone as the Lightsail
instance where you want to create the disk.

Use the GetRegions operation to list the Availability Zones where
Lightsail is currently available.



=head2 B<REQUIRED> DiskName => Str

The unique Lightsail disk name (e.g., C<my-disk>).



=head2 B<REQUIRED> SizeInGb => Int

The size of the disk in GB (e.g., C<32>).



=head2 Tags => ArrayRef[Lightsail_Tag]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDisk in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

