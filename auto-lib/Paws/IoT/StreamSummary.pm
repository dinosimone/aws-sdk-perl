# Generated from default/object.tt
package Paws::IoT::StreamSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has StreamArn => (is => 'ro', isa => Str);
  has StreamId => (is => 'ro', isa => Str);
  has StreamVersion => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamVersion' => {
                                    'type' => 'Int'
                                  },
               'StreamId' => {
                               'type' => 'Str'
                             },
               'StreamArn' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StreamVersion' => 'streamVersion',
                       'StreamId' => 'streamId',
                       'StreamArn' => 'streamArn',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StreamSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::StreamSummary object:

  $service_obj->Method(Att1 => { Description => $value, ..., StreamVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::StreamSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A summary of a stream.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the stream.


=head2 StreamArn => Str

  The stream ARN.


=head2 StreamId => Str

  The stream ID.


=head2 StreamVersion => Int

  The stream version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

