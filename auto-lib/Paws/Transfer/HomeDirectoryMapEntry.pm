package Paws::Transfer::HomeDirectoryMapEntry;
  use Moose;
  has Entry => (is => 'ro', isa => 'Str', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::HomeDirectoryMapEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::HomeDirectoryMapEntry object:

  $service_obj->Method(Att1 => { Entry => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::HomeDirectoryMapEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Entry

=head1 DESCRIPTION

Represents an object that contains entries and a targets for
C<HomeDirectoryMappings>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entry => Str

  Represents an entry and a target for C<HomeDirectoryMappings>.


=head2 B<REQUIRED> Target => Str

  Represents the map target that is used in a C<HomeDirectorymapEntry>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
