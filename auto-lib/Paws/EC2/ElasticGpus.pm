package Paws::EC2::ElasticGpus;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ElasticGpuHealth/;
  has AvailabilityZone => (is => 'ro', isa => Str);
  has ElasticGpuHealth => (is => 'ro', isa => EC2_ElasticGpuHealth);
  has ElasticGpuId => (is => 'ro', isa => Str);
  has ElasticGpuState => (is => 'ro', isa => Str);
  has ElasticGpuType => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticGpuHealth' => {
                                       'class' => 'Paws::EC2::ElasticGpuHealth',
                                       'type' => 'EC2_ElasticGpuHealth'
                                     },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'ElasticGpuState' => {
                                      'type' => 'Str'
                                    },
               'ElasticGpuType' => {
                                     'type' => 'Str'
                                   },
               'ElasticGpuId' => {
                                   'type' => 'Str'
                                 },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'ElasticGpuHealth' => 'elasticGpuHealth',
                       'InstanceId' => 'instanceId',
                       'ElasticGpuState' => 'elasticGpuState',
                       'ElasticGpuType' => 'elasticGpuType',
                       'ElasticGpuId' => 'elasticGpuId',
                       'AvailabilityZone' => 'availabilityZone'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ElasticGpus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ElasticGpus object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ElasticGpus object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in the which the Elastic Graphics accelerator
resides.


=head2 ElasticGpuHealth => EC2_ElasticGpuHealth

  The status of the Elastic Graphics accelerator.


=head2 ElasticGpuId => Str

  The ID of the Elastic Graphics accelerator.


=head2 ElasticGpuState => Str

  The state of the Elastic Graphics accelerator.


=head2 ElasticGpuType => Str

  The type of Elastic Graphics accelerator.


=head2 InstanceId => Str

  The ID of the instance to which the Elastic Graphics accelerator is
attached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
