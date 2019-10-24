# Generated from json/callresult_class.tt

package Paws::CodeStar::CreateUserProfileResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has EmailAddress => (is => 'ro', isa => Str);
  has LastModifiedTimestamp => (is => 'ro', isa => Str);
  has SshPublicKey => (is => 'ro', isa => Str);
  has UserArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserArn' => {
                              'type' => 'Str'
                            },
               'SshPublicKey' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'LastModifiedTimestamp' => {
                                            'type' => 'Str'
                                          },
               'EmailAddress' => {
                                   'type' => 'Str'
                                 },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'UserArn' => 'userArn',
                       'SshPublicKey' => 'sshPublicKey',
                       'DisplayName' => 'displayName',
                       'LastModifiedTimestamp' => 'lastModifiedTimestamp',
                       'EmailAddress' => 'emailAddress',
                       'CreatedTimestamp' => 'createdTimestamp'
                     },
  'IsRequired' => {
                    'UserArn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateUserProfileResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The date the user profile was created, in timestamp format.


=head2 DisplayName => Str

The name that is displayed as the friendly name for the user in AWS
CodeStar.


=head2 EmailAddress => Str

The email address that is displayed as part of the user's profile in
AWS CodeStar.


=head2 LastModifiedTimestamp => Str

The date the user profile was last modified, in timestamp format.


=head2 SshPublicKey => Str

The SSH public key associated with the user in AWS CodeStar. This is
the public portion of the public/private keypair the user can use to
access project resources if a project owner allows the user remote
access to those resources.


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user in IAM.


=head2 _request_id => Str


=cut

1;