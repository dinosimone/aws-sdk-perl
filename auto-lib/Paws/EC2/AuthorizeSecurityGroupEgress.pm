
package Paws::EC2::AuthorizeSecurityGroupEgress;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_IpPermission/;
  has CidrIp => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has FromPort => (is => 'ro', isa => Int, predicate => 1);
  has GroupId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IpPermissions => (is => 'ro', isa => ArrayRef[EC2_IpPermission], predicate => 1);
  has IpProtocol => (is => 'ro', isa => Str, predicate => 1);
  has SourceSecurityGroupName => (is => 'ro', isa => Str, predicate => 1);
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => Str, predicate => 1);
  has ToPort => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'IpPermissions' => {
                                    'class' => 'Paws::EC2::IpPermission',
                                    'type' => 'ArrayRef[EC2_IpPermission]'
                                  },
               'GroupId' => {
                              'type' => 'Str'
                            },
               'IpProtocol' => {
                                 'type' => 'Str'
                               },
               'SourceSecurityGroupOwnerId' => {
                                                 'type' => 'Str'
                                               },
               'ToPort' => {
                             'type' => 'Int'
                           },
               'FromPort' => {
                               'type' => 'Int'
                             },
               'SourceSecurityGroupName' => {
                                              'type' => 'Str'
                                            },
               'CidrIp' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DryRun' => 'dryRun',
                       'IpPermissions' => 'ipPermissions',
                       'GroupId' => 'groupId',
                       'IpProtocol' => 'ipProtocol',
                       'SourceSecurityGroupOwnerId' => 'sourceSecurityGroupOwnerId',
                       'ToPort' => 'toPort',
                       'FromPort' => 'fromPort',
                       'SourceSecurityGroupName' => 'sourceSecurityGroupName',
                       'CidrIp' => 'cidrIp'
                     },
  'IsRequired' => {
                    'GroupId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupEgress - Arguments for method AuthorizeSecurityGroupEgress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSecurityGroupEgress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AuthorizeSecurityGroupEgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSecurityGroupEgress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->AuthorizeSecurityGroupEgress(
      GroupId       => 'MyString',
      CidrIp        => 'MyString',    # OPTIONAL
      DryRun        => 1,             # OPTIONAL
      FromPort      => 1,             # OPTIONAL
      IpPermissions => [
        {
          FromPort   => 1,
          IpProtocol => 'MyString',
          IpRanges   => [
            {
              CidrIp      => 'MyString',
              Description => 'MyString',
            },
            ...
          ],                          # OPTIONAL
          Ipv6Ranges => [
            {
              CidrIpv6    => 'MyString',
              Description => 'MyString',
            },
            ...
          ],                          # OPTIONAL
          PrefixListIds => [
            {
              Description  => 'MyString',
              PrefixListId => 'MyString',
            },
            ...
          ],                          # OPTIONAL
          ToPort           => 1,
          UserIdGroupPairs => [
            {
              Description            => 'MyString',
              GroupId                => 'MyString',
              GroupName              => 'MyString',
              PeeringStatus          => 'MyString',
              UserId                 => 'MyString',
              VpcId                  => 'MyString',
              VpcPeeringConnectionId => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      IpProtocol                 => 'MyString',    # OPTIONAL
      SourceSecurityGroupName    => 'MyString',    # OPTIONAL
      SourceSecurityGroupOwnerId => 'MyString',    # OPTIONAL
      ToPort                     => 1,             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AuthorizeSecurityGroupEgress>

=head1 ATTRIBUTES


=head2 CidrIp => Str

Not supported. Use a set of IP permissions to specify the CIDR.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

Not supported. Use a set of IP permissions to specify the port.



=head2 B<REQUIRED> GroupId => Str

The ID of the security group.



=head2 IpPermissions => ArrayRef[EC2_IpPermission]

The sets of IP permissions. You can't specify a destination security
group and a CIDR IP address range in the same set of permissions.



=head2 IpProtocol => Str

Not supported. Use a set of IP permissions to specify the protocol name
or number.



=head2 SourceSecurityGroupName => Str

Not supported. Use a set of IP permissions to specify a destination
security group.



=head2 SourceSecurityGroupOwnerId => Str

Not supported. Use a set of IP permissions to specify a destination
security group.



=head2 ToPort => Int

Not supported. Use a set of IP permissions to specify the port.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSecurityGroupEgress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

