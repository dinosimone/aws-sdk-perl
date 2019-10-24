# Generated from default/object.tt
package Paws::MediaConnect::ListedFlow;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw//;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has FlowArn => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has SourceType => (is => 'ro', isa => Str, required => 1);
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'SourceType' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'FlowArn' => {
                              'type' => 'Str'
                            },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'SourceType' => 'sourceType',
                       'Name' => 'name',
                       'Description' => 'description',
                       'FlowArn' => 'flowArn',
                       'AvailabilityZone' => 'availabilityZone'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'SourceType' => 1,
                    'Name' => 1,
                    'Description' => 1,
                    'FlowArn' => 1,
                    'AvailabilityZone' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListedFlow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::ListedFlow object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::ListedFlow object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Provides a summary of a flow, including its ARN, Availability Zone, and
source type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone that the flow was created in.


=head2 B<REQUIRED> Description => Str

  A description of the flow.


=head2 B<REQUIRED> FlowArn => Str

  The ARN of the flow.


=head2 B<REQUIRED> Name => Str

  The name of the flow.


=head2 B<REQUIRED> SourceType => Str

  The type of source. This value is either owned (originated somewhere
other than an AWS Elemental MediaConnect flow owned by another AWS
account) or entitled (originated at an AWS Elemental MediaConnect flow
owned by another AWS account).


=head2 B<REQUIRED> Status => Str

  The current status of the flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

