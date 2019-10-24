# Generated from json/callargs_class.tt

package Paws::SMS::CreateApp;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_Tag SMS_ServerGroup/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, predicate => 1);
  has ServerGroups => (is => 'ro', isa => ArrayRef[SMS_ServerGroup], predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SMS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SMS::CreateAppResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ServerGroups' => {
                                   'class' => 'Paws::SMS::ServerGroup',
                                   'type' => 'ArrayRef[SMS_ServerGroup]'
                                 },
               'Tags' => {
                           'class' => 'Paws::SMS::Tag',
                           'type' => 'ArrayRef[SMS_Tag]'
                         },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'ServerGroups' => 'serverGroups',
                       'Tags' => 'tags',
                       'RoleName' => 'roleName',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateApp - Arguments for method CreateApp on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $CreateAppResponse = $sms->CreateApp(
      ClientToken  => 'MyClientToken',       # OPTIONAL
      Description  => 'MyAppDescription',    # OPTIONAL
      Name         => 'MyAppName',           # OPTIONAL
      RoleName     => 'MyRoleName',          # OPTIONAL
      ServerGroups => [
        {
          Name          => 'MyServerGroupName',    # OPTIONAL
          ServerGroupId => 'MyServerGroupId',      # OPTIONAL
          ServerList    => [
            {
              ReplicationJobId         => 'MyReplicationJobId',    # OPTIONAL
              ReplicationJobTerminated => 1,                       # OPTIONAL
              ServerId                 => 'MyServerId',            # OPTIONAL
              ServerType =>
                'VIRTUAL_MACHINE',    # values: VIRTUAL_MACHINE; OPTIONAL
              VmServer => {
                VmManagerName => 'MyVmManagerName',    # OPTIONAL
                VmManagerType =>
                  'VSPHERE',  # values: VSPHERE, SCVMM, HYPERV-MANAGER; OPTIONAL
                VmName          => 'MyVmName',    # OPTIONAL
                VmPath          => 'MyVmPath',    # OPTIONAL
                VmServerAddress => {
                  VmId        => 'MyVmId',           # OPTIONAL
                  VmManagerId => 'MyVmManagerId',    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
        },
        ...
      ],            # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $AppSummary   = $CreateAppResponse->AppSummary;
    my $ServerGroups = $CreateAppResponse->ServerGroups;
    my $Tags         = $CreateAppResponse->Tags;

    # Returns a L<Paws::SMS::CreateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/CreateApp>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier you provide to ensure idempotency
of application creation.



=head2 Description => Str

Description of the new application



=head2 Name => Str

Name of the new application.



=head2 RoleName => Str

Name of service role in customer's account to be used by AWS SMS.



=head2 ServerGroups => ArrayRef[SMS_ServerGroup]

List of server groups to include in the application.



=head2 Tags => ArrayRef[SMS_Tag]

List of tags to be associated with the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

