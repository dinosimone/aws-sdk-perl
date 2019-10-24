
package Paws::ResourceGroups::GetGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceGroups::Types qw//;
  has GroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/groups/{GroupName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ResourceGroups::GetGroupOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupName' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'GroupName' => 'GroupName'
                  },
  'IsRequired' => {
                    'GroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroup - Arguments for method GetGroup on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroup on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroup.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $GetGroupOutput = $resource -groups->GetGroup(
      GroupName => 'MyGroupName',

    );

    # Results:
    my $Group = $GetGroupOutput->Group;

    # Returns a L<Paws::ResourceGroups::GetGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/GetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroup in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

