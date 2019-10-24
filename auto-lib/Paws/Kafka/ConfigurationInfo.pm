# Generated from default/object.tt
package Paws::Kafka::ConfigurationInfo;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has Revision => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revision' => {
                               'type' => 'Int'
                             },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Revision' => 'revision',
                       'Arn' => 'arn'
                     },
  'IsRequired' => {
                    'Revision' => 1,
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ConfigurationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ConfigurationInfo object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ConfigurationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Specifies the configuration to use for the brokers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  ARN of the configuration to use.


=head2 B<REQUIRED> Revision => Int

  The revision of the configuration to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

