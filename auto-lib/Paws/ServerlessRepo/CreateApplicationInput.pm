# Generated from default/object.tt
package Paws::ServerlessRepo::CreateApplicationInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ServerlessRepo::Types qw//;
  has Author => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has HomePageUrl => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LicenseBody => (is => 'ro', isa => Str);
  has LicenseUrl => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has ReadmeBody => (is => 'ro', isa => Str);
  has ReadmeUrl => (is => 'ro', isa => Str);
  has SemanticVersion => (is => 'ro', isa => Str);
  has SourceCodeArchiveUrl => (is => 'ro', isa => Str);
  has SourceCodeUrl => (is => 'ro', isa => Str);
  has SpdxLicenseId => (is => 'ro', isa => Str);
  has TemplateBody => (is => 'ro', isa => Str);
  has TemplateUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HomePageUrl' => {
                                  'type' => 'Str'
                                },
               'SourceCodeUrl' => {
                                    'type' => 'Str'
                                  },
               'ReadmeBody' => {
                                 'type' => 'Str'
                               },
               'LicenseBody' => {
                                  'type' => 'Str'
                                },
               'TemplateUrl' => {
                                  'type' => 'Str'
                                },
               'SpdxLicenseId' => {
                                    'type' => 'Str'
                                  },
               'TemplateBody' => {
                                   'type' => 'Str'
                                 },
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'LicenseUrl' => {
                                 'type' => 'Str'
                               },
               'SourceCodeArchiveUrl' => {
                                           'type' => 'Str'
                                         },
               'ReadmeUrl' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Author' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'HomePageUrl' => 'homePageUrl',
                       'SourceCodeUrl' => 'sourceCodeUrl',
                       'ReadmeBody' => 'readmeBody',
                       'LicenseBody' => 'licenseBody',
                       'TemplateUrl' => 'templateUrl',
                       'SpdxLicenseId' => 'spdxLicenseId',
                       'TemplateBody' => 'templateBody',
                       'Labels' => 'labels',
                       'SemanticVersion' => 'semanticVersion',
                       'LicenseUrl' => 'licenseUrl',
                       'SourceCodeArchiveUrl' => 'sourceCodeArchiveUrl',
                       'ReadmeUrl' => 'readmeUrl',
                       'Description' => 'description',
                       'Name' => 'name',
                       'Author' => 'author'
                     },
  'IsRequired' => {
                    'Name' => 1,
                    'Description' => 1,
                    'Author' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::CreateApplicationInput object:

  $service_obj->Method(Att1 => { Author => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::CreateApplicationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Author

=head1 DESCRIPTION

Create an application request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Author => Str

  The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 B<REQUIRED> Description => Str

  The description of the application.

Minimum length=1. Maximum length=256


=head2 HomePageUrl => Str

  A URL with more information about the application, for example the
location of your GitHub repository for the application.


=head2 Labels => ArrayRef[Str|Undef]

  Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 LicenseBody => Str

  A local text file that contains the license of the app that matches the
spdxLicenseID value of your application. The file has the format
file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

Maximum size 5 MB

You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.


=head2 LicenseUrl => Str

  A link to the S3 object that contains the license of the app that
matches the spdxLicenseID value of your application.

Maximum size 5 MB

You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.


=head2 B<REQUIRED> Name => Str

  The name of the application that you want to publish.

Minimum length=1. Maximum length=140

Pattern: "[a-zA-Z0-9\\-]+";


=head2 ReadmeBody => Str

  A local text readme file in Markdown language that contains a more
detailed description of the application and how it works. The file has
the format file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

Maximum size 5 MB

You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.


=head2 ReadmeUrl => Str

  A link to the S3 object in Markdown language that contains a more
detailed description of the application and how it works.

Maximum size 5 MB

You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.


=head2 SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 SourceCodeArchiveUrl => Str

  A link to the S3 object that contains the ZIP archive of the source
code for this version of your application.

Maximum size 50 MB


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application,
for example the URL of a specific GitHub commit.


=head2 SpdxLicenseId => Str

  A valid identifier from https://spdx.org/licenses/
(https://spdx.org/licenses/).


=head2 TemplateBody => Str

  The local raw packaged AWS SAM template file of your application. The
file has the format file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

You can specify only one of templateBody and templateUrl; otherwise an
error results.


=head2 TemplateUrl => Str

  A link to the S3 object containing the packaged AWS SAM template of
your application.

You can specify only one of templateBody and templateUrl; otherwise an
error results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

