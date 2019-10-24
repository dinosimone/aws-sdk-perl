# Generated from json/callargs_class.tt

package Paws::WorkMail::DeleteMailboxPermissions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has EntityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GranteeId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OrganizationId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteMailboxPermissions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkMail::DeleteMailboxPermissionsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationId' => {
                                     'type' => 'Str'
                                   },
               'GranteeId' => {
                                'type' => 'Str'
                              },
               'EntityId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'OrganizationId' => 1,
                    'GranteeId' => 1,
                    'EntityId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteMailboxPermissions - Arguments for method DeleteMailboxPermissions on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMailboxPermissions on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteMailboxPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMailboxPermissions.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteMailboxPermissionsResponse = $workmail->DeleteMailboxPermissions(
      EntityId       => 'MyWorkMailIdentifier',
      GranteeId      => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteMailboxPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The identifier of the member (user or group)that owns the mailbox.



=head2 B<REQUIRED> GranteeId => Str

The identifier of the member (user or group) for which to delete
granted permissions.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization under which the member (user or
group) exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMailboxPermissions in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

