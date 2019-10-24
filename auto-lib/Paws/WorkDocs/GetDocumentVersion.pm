
package Paws::WorkDocs::GetDocumentVersion;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::WorkDocs::Types qw//;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has DocumentId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Fields => (is => 'ro', isa => Str, predicate => 1);
  has IncludeCustomMetadata => (is => 'ro', isa => Bool, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDocumentVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkDocs::GetDocumentVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fields' => {
                             'type' => 'Str'
                           },
               'DocumentId' => {
                                 'type' => 'Str'
                               },
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'IncludeCustomMetadata' => {
                                            'type' => 'Bool'
                                          },
               'VersionId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'DocumentId' => 'DocumentId',
                    'VersionId' => 'VersionId'
                  },
  'ParamInQuery' => {
                      'Fields' => 'fields',
                      'IncludeCustomMetadata' => 'includeCustomMetadata'
                    },
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     },
  'IsRequired' => {
                    'DocumentId' => 1,
                    'VersionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentVersion - Arguments for method GetDocumentVersion on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentVersion on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method GetDocumentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentVersion.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $GetDocumentVersionResponse = $workdocs->GetDocumentVersion(
      DocumentId            => 'MyResourceIdType',
      VersionId             => 'MyDocumentVersionIdType',
      AuthenticationToken   => 'MyAuthenticationHeaderType',    # OPTIONAL
      Fields                => 'MyFieldNamesType',              # OPTIONAL
      IncludeCustomMetadata => 1,                               # OPTIONAL
    );

    # Results:
    my $CustomMetadata = $GetDocumentVersionResponse->CustomMetadata;
    my $Metadata       = $GetDocumentVersionResponse->Metadata;

    # Returns a L<Paws::WorkDocs::GetDocumentVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/GetDocumentVersion>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Fields => Str

A comma-separated list of values. Specify "SOURCE" to include a URL for
the source document.



=head2 IncludeCustomMetadata => Bool

Set this to TRUE to include custom metadata in the response.



=head2 B<REQUIRED> VersionId => Str

The version ID of the document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentVersion in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

