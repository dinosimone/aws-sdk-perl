# Generated from default/object.tt
package Paws::Discovery::ConfigurationTag;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw//;
  has ConfigurationId => (is => 'ro', isa => Str);
  has ConfigurationType => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has TimeOfCreation => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationType' => {
                                        'type' => 'Str'
                                      },
               'ConfigurationId' => {
                                      'type' => 'Str'
                                    },
               'Value' => {
                            'type' => 'Str'
                          },
               'TimeOfCreation' => {
                                     'type' => 'Str'
                                   },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'ConfigurationType' => 'configurationType',
                       'ConfigurationId' => 'configurationId',
                       'Value' => 'value',
                       'TimeOfCreation' => 'timeOfCreation',
                       'Key' => 'key'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ConfigurationTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ConfigurationTag object:

  $service_obj->Method(Att1 => { ConfigurationId => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ConfigurationTag object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationId

=head1 DESCRIPTION

Tags for a configuration item. Tags are metadata that help you
categorize IT assets.

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

  The configuration ID for the item to tag. You can specify a list of
keys and values.


=head2 ConfigurationType => Str

  A type of IT asset to tag.


=head2 Key => Str

  A type of tag on which to filter. For example, I<serverType>.


=head2 TimeOfCreation => Str

  The time the configuration tag was created in Coordinated Universal
Time (UTC).


=head2 Value => Str

  A value on which to filter. For example I<key = serverType> and I<value
= web server>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

