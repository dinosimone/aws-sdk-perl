
package Paws::S3::PutObject;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_Metadata/;
  has ACL => (is => 'ro', isa => Str, predicate => 1);
  has Body => (is => 'ro', isa => Str, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CacheControl => (is => 'ro', isa => Str, predicate => 1);
  has ContentDisposition => (is => 'ro', isa => Str, predicate => 1);
  has ContentEncoding => (is => 'ro', isa => Str, predicate => 1);
  has ContentLanguage => (is => 'ro', isa => Str, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has ContentType => (is => 'ro', isa => Str, predicate => 1);
  has Expires => (is => 'ro', isa => Str, predicate => 1);
  has GrantFullControl => (is => 'ro', isa => Str, predicate => 1);
  has GrantRead => (is => 'ro', isa => Str, predicate => 1);
  has GrantReadACP => (is => 'ro', isa => Str, predicate => 1);
  has GrantWriteACP => (is => 'ro', isa => Str, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Metadata => (is => 'ro', isa => S3_Metadata, predicate => 1);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockMode => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => Str, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has ServerSideEncryption => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKey => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str, predicate => 1);
  has SSEKMSEncryptionContext => (is => 'ro', isa => Str, predicate => 1);
  has SSEKMSKeyId => (is => 'ro', isa => Str, predicate => 1);
  has StorageClass => (is => 'ro', isa => Str, predicate => 1);
  has Tagging => (is => 'ro', isa => Str, predicate => 1);
  has WebsiteRedirectLocation => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::PutObjectOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'GrantFullControl' => {
                                       'type' => 'Str'
                                     },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'class' => 'Paws::S3::Metadata',
                               'type' => 'S3_Metadata'
                             },
               'Tagging' => {
                              'type' => 'Str'
                            },
               'WebsiteRedirectLocation' => {
                                              'type' => 'Str'
                                            },
               'ContentLanguage' => {
                                      'type' => 'Str'
                                    },
               'GrantRead' => {
                                'type' => 'Str'
                              },
               'ObjectLockLegalHoldStatus' => {
                                                'type' => 'Str'
                                              },
               'Key' => {
                          'type' => 'Str'
                        },
               'Expires' => {
                              'type' => 'Str'
                            },
               'Body' => {
                           'type' => 'Str'
                         },
               'ObjectLockRetainUntilDate' => {
                                                'type' => 'Str'
                                              },
               'SSECustomerKey' => {
                                     'type' => 'Str'
                                   },
               'GrantWriteACP' => {
                                    'type' => 'Str'
                                  },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'ACL' => {
                          'type' => 'Str'
                        },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               'ObjectLockMode' => {
                                     'type' => 'Str'
                                   },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 },
               'ContentEncoding' => {
                                      'type' => 'Str'
                                    },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       },
               'GrantReadACP' => {
                                   'type' => 'Str'
                                 }
             },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInURI' => {
                    'Bucket' => 'Bucket',
                    'Key' => 'Key'
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length',
                       'ContentType' => 'Content-Type',
                       'GrantFullControl' => 'x-amz-grant-full-control',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'Tagging' => 'x-amz-tagging',
                       'WebsiteRedirectLocation' => 'x-amz-website-redirect-location',
                       'ContentLanguage' => 'Content-Language',
                       'GrantRead' => 'x-amz-grant-read',
                       'ObjectLockLegalHoldStatus' => 'x-amz-object-lock-legal-hold',
                       'Expires' => 'Expires',
                       'ObjectLockRetainUntilDate' => 'x-amz-object-lock-retain-until-date',
                       'SSECustomerKey' => 'x-amz-server-side-encryption-customer-key',
                       'GrantWriteACP' => 'x-amz-grant-write-acp',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'ACL' => 'x-amz-acl',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context',
                       'CacheControl' => 'Cache-Control',
                       'ObjectLockMode' => 'x-amz-object-lock-mode',
                       'ContentEncoding' => 'Content-Encoding',
                       'RequestPayer' => 'x-amz-request-payer',
                       'StorageClass' => 'x-amz-storage-class',
                       'ContentDisposition' => 'Content-Disposition',
                       'GrantReadACP' => 'x-amz-grant-read-acp'
                     },
  'ParamInHeaders' => {
                        'Metadata' => 'x-amz-meta-'
                      }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObject - Arguments for method PutObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectOutput = $s3->PutObject(
      Bucket             => 'MyBucketName',
      Key                => 'MyObjectKey',
      ACL                => 'private',                 # OPTIONAL
      Body               => 'BlobBody',                # OPTIONAL
      CacheControl       => 'MyCacheControl',          # OPTIONAL
      ContentDisposition => 'MyContentDisposition',    # OPTIONAL
      ContentEncoding    => 'MyContentEncoding',       # OPTIONAL
      ContentLanguage    => 'MyContentLanguage',       # OPTIONAL
      ContentLength      => 1,                         # OPTIONAL
      ContentMD5         => 'MyContentMD5',            # OPTIONAL
      ContentType        => 'MyContentType',           # OPTIONAL
      Expires            => '1970-01-01T01:00:00',     # OPTIONAL
      GrantFullControl   => 'MyGrantFullControl',      # OPTIONAL
      GrantRead          => 'MyGrantRead',             # OPTIONAL
      GrantReadACP       => 'MyGrantReadACP',          # OPTIONAL
      GrantWriteACP      => 'MyGrantWriteACP',         # OPTIONAL
      Metadata => { 'MyMetadataKey' => 'MyMetadataValue', },    # OPTIONAL
      ObjectLockLegalHoldStatus => 'ON',                        # OPTIONAL
      ObjectLockMode            => 'GOVERNANCE',                # OPTIONAL
      ObjectLockRetainUntilDate => '1970-01-01T01:00:00',       # OPTIONAL
      RequestPayer              => 'requester',                 # OPTIONAL
      SSECustomerAlgorithm      => 'MySSECustomerAlgorithm',    # OPTIONAL
      SSECustomerKey            => 'MySSECustomerKey',          # OPTIONAL
      SSECustomerKeyMD5         => 'MySSECustomerKeyMD5',       # OPTIONAL
      SSEKMSEncryptionContext   => 'MySSEKMSEncryptionContext', # OPTIONAL
      SSEKMSKeyId               => 'MySSEKMSKeyId',             # OPTIONAL
      ServerSideEncryption      => 'AES256',                    # OPTIONAL
      StorageClass              => 'STANDARD',                  # OPTIONAL
      Tagging                   => 'MyTaggingHeader',           # OPTIONAL
      WebsiteRedirectLocation   => 'MyWebsiteRedirectLocation', # OPTIONAL
    );

    # Results:
    my $ETag                    = $PutObjectOutput->ETag;
    my $Expiration              = $PutObjectOutput->Expiration;
    my $RequestCharged          = $PutObjectOutput->RequestCharged;
    my $SSECustomerAlgorithm    = $PutObjectOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5       = $PutObjectOutput->SSECustomerKeyMD5;
    my $SSEKMSEncryptionContext = $PutObjectOutput->SSEKMSEncryptionContext;
    my $SSEKMSKeyId             = $PutObjectOutput->SSEKMSKeyId;
    my $ServerSideEncryption    = $PutObjectOutput->ServerSideEncryption;
    my $VersionId               = $PutObjectOutput->VersionId;

    # Returns a L<Paws::S3::PutObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 Body => Str

Object data.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket to which the PUT operation was initiated.



=head2 CacheControl => Str

Specifies caching behavior along the request/reply chain.



=head2 ContentDisposition => Str

Specifies presentational information for the object.



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentLength => Int

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the part data. This parameter
is auto-populated when using the command from the CLI. This parameted
is required if object lock parameters are specified.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 GrantFullControl => Str

Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.



=head2 GrantRead => Str

Allows grantee to read the object data and its metadata.



=head2 GrantReadACP => Str

Allows grantee to read the object ACL.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable object.



=head2 B<REQUIRED> Key => Str

Object key for which the PUT operation was initiated.



=head2 Metadata => S3_Metadata

A map of metadata to store with the object in S3.



=head2 ObjectLockLegalHoldStatus => Str

The Legal Hold status that you want to apply to the specified object.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The object lock mode that you want to apply to this object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want this object's object lock to expire.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 SSEKMSEncryptionContext => Str

Specifies the AWS KMS Encryption Context to use for object encryption.
The value of this header is a base64-encoded UTF-8 string holding JSON
with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

Specifies the AWS KMS key ID to use for object encryption. All GET and
PUT requests for an object protected by AWS KMS will fail if not made
via SSL or using SigV4. Documentation on configuring any of the
officially supported AWS SDKs and CLI can be found at
http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version



=head2 StorageClass => Str

The type of storage to use for the object. Defaults to 'STANDARD'.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">

=head2 Tagging => Str

The tag-set for the object. The tag-set must be encoded as URL Query
parameters. (For example, "Key1=Value1")



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

