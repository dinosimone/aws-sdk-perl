# Generated from default/object.tt
package Paws::Transfer::SshPublicKey;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Transfer::Types qw//;
  has DateImported => (is => 'ro', isa => Str, required => 1);
  has SshPublicKeyBody => (is => 'ro', isa => Str, required => 1);
  has SshPublicKeyId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DateImported' => {
                                   'type' => 'Str'
                                 },
               'SshPublicKeyId' => {
                                     'type' => 'Str'
                                   },
               'SshPublicKeyBody' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'DateImported' => 1,
                    'SshPublicKeyId' => 1,
                    'SshPublicKeyBody' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::SshPublicKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::SshPublicKey object:

  $service_obj->Method(Att1 => { DateImported => $value, ..., SshPublicKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::SshPublicKey object:

  $result = $service_obj->Method(...);
  $result->Att1->DateImported

=head1 DESCRIPTION

Provides information about the public Secure Shell (SSH) key that is
associated with a user account for a specific server (as identified by
C<ServerId>). The information returned includes the date the key was
imported, the public key contents, and the public key ID. A user can
store more than one SSH public key associated with their user name on a
specific SFTP server.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DateImported => Str

  The date that the public key was added to the user account.


=head2 B<REQUIRED> SshPublicKeyBody => Str

  The content of the SSH public key as specified by the C<PublicKeyId>.


=head2 B<REQUIRED> SshPublicKeyId => Str

  The C<SshPublicKeyId> parameter contains the identifier of the public
key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

