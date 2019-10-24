# Generated from json/callargs_class.tt

package Paws::WorkSpaces::RebootWorkspaces;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_RebootRequest/;
  has RebootWorkspaceRequests => (is => 'ro', isa => ArrayRef[WorkSpaces_RebootRequest], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RebootWorkspaces');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::RebootWorkspacesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RebootWorkspaceRequests' => {
                                              'class' => 'Paws::WorkSpaces::RebootRequest',
                                              'type' => 'ArrayRef[WorkSpaces_RebootRequest]'
                                            }
             },
  'IsRequired' => {
                    'RebootWorkspaceRequests' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RebootWorkspaces - Arguments for method RebootWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootWorkspaces on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method RebootWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootWorkspaces.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $RebootWorkspacesResult = $workspaces->RebootWorkspaces(
      RebootWorkspaceRequests => [
        {
          WorkspaceId => 'MyWorkspaceId',

        },
        ...
      ],

    );

    # Results:
    my $FailedRequests = $RebootWorkspacesResult->FailedRequests;

    # Returns a L<Paws::WorkSpaces::RebootWorkspacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/RebootWorkspaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RebootWorkspaceRequests => ArrayRef[WorkSpaces_RebootRequest]

The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

