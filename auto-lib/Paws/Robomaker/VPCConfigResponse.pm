# Generated from default/object.tt
package Paws::Robomaker::VPCConfigResponse;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Undef Str/;
  use Paws::Robomaker::Types qw//;
  has AssignPublicIp => (is => 'ro', isa => Bool);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has VpcId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'AssignPublicIp' => {
                                     'type' => 'Bool'
                                   },
               'SecurityGroups' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'VpcId' => 'vpcId',
                       'Subnets' => 'subnets',
                       'AssignPublicIp' => 'assignPublicIp',
                       'SecurityGroups' => 'securityGroups'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::VPCConfigResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::VPCConfigResponse object:

  $service_obj->Method(Att1 => { AssignPublicIp => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::VPCConfigResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignPublicIp

=head1 DESCRIPTION

VPC configuration associated with your simulation job.

=head1 ATTRIBUTES


=head2 AssignPublicIp => Bool

  A boolean indicating if a public IP was assigned.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  A list of security group IDs associated with the simulation job.


=head2 Subnets => ArrayRef[Str|Undef]

  A list of subnet IDs associated with the simulation job.


=head2 VpcId => Str

  The VPC ID associated with your simulation job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

