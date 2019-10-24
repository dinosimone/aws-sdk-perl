
package Paws::Quicksight::GetDashboardEmbedUrl;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::Quicksight::Types qw//;
  has AwsAccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DashboardId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResetDisabled => (is => 'ro', isa => Bool, predicate => 1);
  has SessionLifetimeInMinutes => (is => 'ro', isa => Int, predicate => 1);
  has UndoRedoDisabled => (is => 'ro', isa => Bool, predicate => 1);
  has UserArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDashboardEmbedUrl');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Quicksight::GetDashboardEmbedUrlResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserArn' => {
                              'type' => 'Str'
                            },
               'SessionLifetimeInMinutes' => {
                                               'type' => 'Int'
                                             },
               'ResetDisabled' => {
                                    'type' => 'Bool'
                                  },
               'DashboardId' => {
                                  'type' => 'Str'
                                },
               'IdentityType' => {
                                   'type' => 'Str'
                                 },
               'AwsAccountId' => {
                                   'type' => 'Str'
                                 },
               'UndoRedoDisabled' => {
                                       'type' => 'Bool'
                                     }
             },
  'ParamInURI' => {
                    'DashboardId' => 'DashboardId',
                    'AwsAccountId' => 'AwsAccountId'
                  },
  'ParamInQuery' => {
                      'UserArn' => 'user-arn',
                      'SessionLifetimeInMinutes' => 'session-lifetime',
                      'ResetDisabled' => 'reset-disabled',
                      'IdentityType' => 'creds-type',
                      'UndoRedoDisabled' => 'undo-redo-disabled'
                    },
  'IsRequired' => {
                    'DashboardId' => 1,
                    'IdentityType' => 1,
                    'AwsAccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::GetDashboardEmbedUrl - Arguments for method GetDashboardEmbedUrl on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDashboardEmbedUrl on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method GetDashboardEmbedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDashboardEmbedUrl.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $GetDashboardEmbedUrlResponse = $quicksight->GetDashboardEmbedUrl(
      AwsAccountId             => 'MyAwsAccountId',
      DashboardId              => 'MyString',
      IdentityType             => 'IAM',
      ResetDisabled            => 1,                  # OPTIONAL
      SessionLifetimeInMinutes => 1,                  # OPTIONAL
      UndoRedoDisabled         => 1,                  # OPTIONAL
      UserArn                  => 'MyArn',            # OPTIONAL
    );

    # Results:
    my $EmbedUrl  = $GetDashboardEmbedUrlResponse->EmbedUrl;
    my $RequestId = $GetDashboardEmbedUrlResponse->RequestId;
    my $Status    = $GetDashboardEmbedUrlResponse->Status;

    # Returns a L<Paws::Quicksight::GetDashboardEmbedUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/GetDashboardEmbedUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

AWS account ID that contains the dashboard you are embedding.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard, also added to IAM policy



=head2 B<REQUIRED> IdentityType => Str

The authentication method the user uses to sign in (IAM only).

Valid values are: C<"IAM">, C<"QUICKSIGHT">

=head2 ResetDisabled => Bool

Remove the reset button on embedded dashboard. The default is FALSE,
which allows the reset button.



=head2 SessionLifetimeInMinutes => Int

How many minutes the session is valid. The session lifetime must be
between 15 and 600 minutes.



=head2 UndoRedoDisabled => Bool

Remove the undo/redo button on embedded dashboard. The default is
FALSE, which enables the undo/redo button.



=head2 UserArn => Str

The Amazon QuickSight user's ARN, for use with C<QUICKSIGHT> identity
type. You can use this for any of the following:

=over

=item *

Amazon QuickSight users in your account (readers, authors, or admins)

=item *

AD users

=item *

Invited non-federated users

=item *

Federated IAM users

=item *

Federated IAM role-based sessions

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDashboardEmbedUrl in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

