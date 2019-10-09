package Paws::S3::ReplicationConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_ReplicationRule/;
  has Role => (is => 'ro', isa => Str, required => 1);
  has Rules => (is => 'ro', isa => ArrayRef[S3_ReplicationRule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::S3::ReplicationRule',
                            'type' => 'ArrayRef[S3_ReplicationRule]'
                          },
               'Role' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Rules' => 'Rule'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ReplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ReplicationConfiguration object:

  $service_obj->Method(Att1 => { Role => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ReplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Role

=head1 DESCRIPTION

A container for replication rules. You can add up to 1,000 rules. The
maximum size of a replication configuration is 2 MB.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Role => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that Amazon S3 assumes when replicating objects.
For more information, see How to Set Up Cross-Region Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-how-setup.html) in
the I<Amazon Simple Storage Service Developer Guide>.


=head2 B<REQUIRED> Rules => ArrayRef[S3_ReplicationRule]

  A container for one or more replication rules. A replication
configuration must have at least one rule and can contain a maximum of
1,000 rules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

