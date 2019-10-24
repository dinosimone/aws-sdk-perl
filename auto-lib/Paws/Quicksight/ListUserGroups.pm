
package Paws::Quicksight::ListUserGroups;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw//;
  has AwsAccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Namespace => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has UserName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListUserGroups');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Quicksight::ListUserGroupsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'AwsAccountId' => {
                                   'type' => 'Str'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInURI' => {
                    'UserName' => 'UserName',
                    'Namespace' => 'Namespace',
                    'AwsAccountId' => 'AwsAccountId'
                  },
  'ParamInQuery' => {
                      'NextToken' => 'next-token',
                      'MaxResults' => 'max-results'
                    },
  'IsRequired' => {
                    'UserName' => 1,
                    'Namespace' => 1,
                    'AwsAccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListUserGroups - Arguments for method ListUserGroups on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserGroups on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method ListUserGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserGroups.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $ListUserGroupsResponse = $quicksight->ListUserGroups(
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',
      UserName     => 'MyUserName',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyString',         # OPTIONAL
    );

    # Results:
    my $GroupList = $ListUserGroupsResponse->GroupList;
    my $NextToken = $ListUserGroupsResponse->NextToken;
    my $RequestId = $ListUserGroupsResponse->RequestId;
    my $Status    = $ListUserGroupsResponse->Status;

    # Returns a L<Paws::Quicksight::ListUserGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/ListUserGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID that the user is in. Currently, you use the ID for
the AWS account that contains your Amazon QuickSight account.



=head2 MaxResults => Int

The maximum number of results to return from this request.



=head2 B<REQUIRED> Namespace => Str

The namespace. Currently, you should set this to C<default>.



=head2 NextToken => Str

A pagination token that can be used in a subsequent request.



=head2 B<REQUIRED> UserName => Str

The Amazon QuickSight user name that you want to list group memberships
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserGroups in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

