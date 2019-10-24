# Generated from json/callargs_class.tt

package Paws::StorageGateway::CreateSMBFileShare;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag/;
  has AdminUserList => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Authentication => (is => 'ro', isa => Str, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DefaultStorageClass => (is => 'ro', isa => Str, predicate => 1);
  has GatewayARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GuessMIMETypeEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has InvalidUserList => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has KMSEncrypted => (is => 'ro', isa => Bool, predicate => 1);
  has KMSKey => (is => 'ro', isa => Str, predicate => 1);
  has LocationARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ObjectACL => (is => 'ro', isa => Str, predicate => 1);
  has ReadOnly => (is => 'ro', isa => Bool, predicate => 1);
  has RequesterPays => (is => 'ro', isa => Bool, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SMBACLEnabled => (is => 'ro', isa => Bool, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag], predicate => 1);
  has ValidUserList => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSMBFileShare');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StorageGateway::CreateSMBFileShareOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SMBACLEnabled' => {
                                    'type' => 'Bool'
                                  },
               'Authentication' => {
                                     'type' => 'Str'
                                   },
               'AdminUserList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'ObjectACL' => {
                                'type' => 'Str'
                              },
               'InvalidUserList' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'KMSEncrypted' => {
                                   'type' => 'Bool'
                                 },
               'GatewayARN' => {
                                 'type' => 'Str'
                               },
               'RequesterPays' => {
                                    'type' => 'Bool'
                                  },
               'LocationARN' => {
                                  'type' => 'Str'
                                },
               'ReadOnly' => {
                               'type' => 'Bool'
                             },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'Role' => {
                           'type' => 'Str'
                         },
               'DefaultStorageClass' => {
                                          'type' => 'Str'
                                        },
               'ValidUserList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Tags' => {
                           'class' => 'Paws::StorageGateway::Tag',
                           'type' => 'ArrayRef[StorageGateway_Tag]'
                         },
               'GuessMIMETypeEnabled' => {
                                           'type' => 'Bool'
                                         }
             },
  'IsRequired' => {
                    'LocationARN' => 1,
                    'ClientToken' => 1,
                    'Role' => 1,
                    'GatewayARN' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSMBFileShare - Arguments for method CreateSMBFileShare on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSMBFileShare on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateSMBFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSMBFileShare.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $CreateSMBFileShareOutput = $storagegateway->CreateSMBFileShare(
      ClientToken   => 'MyClientToken',
      GatewayARN    => 'MyGatewayARN',
      LocationARN   => 'MyLocationARN',
      Role          => 'MyRole',
      AdminUserList => [
        'MyFileShareUser', ...    # min: 1, max: 64
      ],                          # OPTIONAL
      Authentication       => 'MyAuthentication',    # OPTIONAL
      DefaultStorageClass  => 'MyStorageClass',      # OPTIONAL
      GuessMIMETypeEnabled => 1,                     # OPTIONAL
      InvalidUserList      => [
        'MyFileShareUser', ...                       # min: 1, max: 64
      ],                                             # OPTIONAL
      KMSEncrypted  => 1,                            # OPTIONAL
      KMSKey        => 'MyKMSKey',                   # OPTIONAL
      ObjectACL     => 'private',                    # OPTIONAL
      ReadOnly      => 1,                            # OPTIONAL
      RequesterPays => 1,                            # OPTIONAL
      SMBACLEnabled => 1,                            # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',                       # min: 1, max: 128
          Value => 'MyTagValue',                     # max: 256

        },
        ...
      ],                                             # OPTIONAL
      ValidUserList => [
        'MyFileShareUser', ...                       # min: 1, max: 64
      ],                                             # OPTIONAL
    );

    # Results:
    my $FileShareARN = $CreateSMBFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::CreateSMBFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateSMBFileShare>

=head1 ATTRIBUTES


=head2 AdminUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that have
administrator rights to the file share. A group must be prefixed with
the @ character. For example C<@group1>. Can only be set if
Authentication is set to C<ActiveDirectory>.



=head2 Authentication => Str

The authentication method that users use to access the file share.

Valid values are C<ActiveDirectory> or C<GuestAccess>. The default is
C<ActiveDirectory>.



=head2 B<REQUIRED> ClientToken => Str

A unique string value that you supply that is used by file gateway to
ensure idempotent file share creation.



=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by
the file gateway. Possible values are C<S3_STANDARD>,
C<S3_STANDARD_IA>, or C<S3_ONEZONE_IA>. If this field is not populated,
the default value C<S3_STANDARD> is used. Optional.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the file gateway on which you want to
create a file share.



=head2 GuessMIMETypeEnabled => Bool

A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to true to enable MIME type
guessing, and otherwise to false. The default value is true.



=head2 InvalidUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that are not allowed
to access the file share. A group must be prefixed with the @
character. For example C<@group1>. Can only be set if Authentication is
set to C<ActiveDirectory>.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3
server side encryption. This value can only be set when KMSEncrypted is
true. Optional.



=head2 B<REQUIRED> LocationARN => Str

The ARN of the backed storage used for storing file data.



=head2 ObjectACL => Str

A value that sets the access control list permission for objects in the
S3 bucket that a file gateway puts objects into. The default value is
"private".

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">, C<"aws-exec-read">

=head2 ReadOnly => Bool

A value that sets the write status of a file share. This value is true
if the write status is read-only, and otherwise false.



=head2 RequesterPays => Bool

A value that sets who pays the cost of the request and the cost
associated with data download from the S3 bucket. If this value is set
to true, the requester pays the costs. Otherwise the S3 bucket owner
pays. However, the S3 bucket owner always pays the cost of storing
data.

C<RequesterPays> is a configuration for the S3 bucket that backs the
file share, so make sure that the configuration on the file share is
the same as the S3 bucket configuration.



=head2 B<REQUIRED> Role => Str

The ARN of the AWS Identity and Access Management (IAM) role that a
file gateway assumes when it accesses the underlying storage.



=head2 SMBACLEnabled => Bool

Set this value to "true to enable ACL (access control list) on the SMB
file share. Set it to "false" to map file and directory permissions to
the POSIX permissions.

For more information, see
https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html
in the Storage Gateway User Guide.



=head2 Tags => ArrayRef[StorageGateway_Tag]

A list of up to 50 tags that can be assigned to the NFS file share.
Each tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.



=head2 ValidUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that are allowed to
access the file share. A group must be prefixed with the @ character.
For example C<@group1>. Can only be set if Authentication is set to
C<ActiveDirectory>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSMBFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

