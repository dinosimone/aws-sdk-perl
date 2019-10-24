# Generated from default/object.tt
package Paws::EMR::InstanceTimeline;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has EndDateTime => (is => 'ro', isa => Str);
  has ReadyDateTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReadyDateTime' => {
                                    'type' => 'Str'
                                  },
               'CreationDateTime' => {
                                       'type' => 'Str'
                                     },
               'EndDateTime' => {
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

Paws::EMR::InstanceTimeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceTimeline object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., ReadyDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceTimeline object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

The timeline of the instance lifecycle.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time of the instance.


=head2 EndDateTime => Str

  The date and time when the instance was terminated.


=head2 ReadyDateTime => Str

  The date and time when the instance was ready to perform tasks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

