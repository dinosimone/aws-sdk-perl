
package Paws::Amplify::CreateDeploymentResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_FileUploadUrls/;
  has FileUploadUrls => (is => 'ro', isa => Amplify_FileUploadUrls, required => 1);
  has JobId => (is => 'ro', isa => Str);
  has ZipUploadUrl => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileUploadUrls' => {
                                     'class' => 'Paws::Amplify::FileUploadUrls',
                                     'type' => 'Amplify_FileUploadUrls'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ZipUploadUrl' => {
                                   'type' => 'Str'
                                 },
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'FileUploadUrls' => 'fileUploadUrls',
                       'ZipUploadUrl' => 'zipUploadUrl',
                       'JobId' => 'jobId'
                     },
  'IsRequired' => {
                    'FileUploadUrls' => 1,
                    'ZipUploadUrl' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateDeploymentResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileUploadUrls => Amplify_FileUploadUrls

When the fileMap argument is provided in the request, the
fileUploadUrls will contain a map of file names to upload url.


=head2 JobId => Str

The jobId for this deployment, will supply to start deployment api.


=head2 B<REQUIRED> ZipUploadUrl => Str

When the fileMap argument is NOT provided. This zipUploadUrl will be
returned.


=head2 _request_id => Str


=cut

