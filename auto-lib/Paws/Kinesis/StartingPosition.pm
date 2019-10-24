# Generated from default/object.tt
package Paws::Kinesis::StartingPosition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw//;
  has SequenceNumber => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'SequenceNumber' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'Type' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::StartingPosition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::StartingPosition object:

  $service_obj->Method(Att1 => { SequenceNumber => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::StartingPosition object:

  $result = $service_obj->Method(...);
  $result->Att1->SequenceNumber

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 SequenceNumber => Str

  


=head2 Timestamp => Str

  


=head2 B<REQUIRED> Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

