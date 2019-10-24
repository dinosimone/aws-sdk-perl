
package Paws::Amplify::GetBranch;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetBranch');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps/{appId}/branches/{branchName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::GetBranchResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'BranchName' => 'branchName',
                    'AppId' => 'appId'
                  },
  'IsRequired' => {
                    'BranchName' => 1,
                    'AppId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetBranch - Arguments for method GetBranch on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBranch on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method GetBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBranch.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $GetBranchResult = $amplify->GetBranch(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',

    );

    # Results:
    my $Branch = $GetBranchResult->Branch;

    # Returns a L<Paws::Amplify::GetBranchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/GetBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for the branch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBranch in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

