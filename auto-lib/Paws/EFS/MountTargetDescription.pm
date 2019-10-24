
package Paws::EFS::MountTargetDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EFS::Types qw//;
  has FileSystemId => (is => 'ro', isa => Str, required => 1);
  has IpAddress => (is => 'ro', isa => Str);
  has LifeCycleState => (is => 'ro', isa => Str, required => 1);
  has MountTargetId => (is => 'ro', isa => Str, required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => Str);
  has OwnerId => (is => 'ro', isa => Str);
  has SubnetId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IpAddress' => {
                                'type' => 'Str'
                              },
               'FileSystemId' => {
                                   'type' => 'Str'
                                 },
               'OwnerId' => {
                              'type' => 'Str'
                            },
               'MountTargetId' => {
                                    'type' => 'Str'
                                  },
               'LifeCycleState' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubnetId' => {
                               'type' => 'Str'
                             },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'LifeCycleState' => 1,
                    'SubnetId' => 1,
                    'FileSystemId' => 1,
                    'MountTargetId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::MountTargetDescription

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system for which the mount target is intended.


=head2 IpAddress => Str

Address at which the file system can be mounted by using the mount
target.


=head2 B<REQUIRED> LifeCycleState => Str

Lifecycle state of the mount target.

Valid values are: C<"creating">, C<"available">, C<"updating">, C<"deleting">, C<"deleted">
=head2 B<REQUIRED> MountTargetId => Str

System-assigned mount target ID.


=head2 NetworkInterfaceId => Str

The ID of the network interface that Amazon EFS created when it created
the mount target.


=head2 OwnerId => Str

AWS account ID that owns the resource.


=head2 B<REQUIRED> SubnetId => Str

The ID of the mount target's subnet.


=head2 _request_id => Str


=cut

