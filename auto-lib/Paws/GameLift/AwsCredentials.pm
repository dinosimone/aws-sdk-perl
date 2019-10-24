# Generated from default/object.tt
package Paws::GameLift::AwsCredentials;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw//;
  has AccessKeyId => (is => 'ro', isa => Str);
  has SecretAccessKey => (is => 'ro', isa => Str);
  has SessionToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SessionToken' => {
                                   'type' => 'Str'
                                 },
               'AccessKeyId' => {
                                  'type' => 'Str'
                                },
               'SecretAccessKey' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::AwsCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::AwsCredentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::AwsCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Temporary access credentials used for uploading game build files to
Amazon GameLift. They are valid for a limited time. If they expire
before you upload your game build, get a new set by calling
RequestUploadCredentials.

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

  Temporary key allowing access to the Amazon GameLift S3 account.


=head2 SecretAccessKey => Str

  Temporary secret key allowing access to the Amazon GameLift S3 account.


=head2 SessionToken => Str

  Token used to associate a specific build ID with the files uploaded
using these credentials.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

