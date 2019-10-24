# Generated from default/object.tt
package Paws::Datasync::FilterRule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw//;
  has FilterType => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'FilterType' => {
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

Paws::Datasync::FilterRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::FilterRule object:

  $service_obj->Method(Att1 => { FilterType => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::FilterRule object:

  $result = $service_obj->Method(...);
  $result->Att1->FilterType

=head1 DESCRIPTION

A pattern that determines which files to include in the transfer or
which files to exclude.

=head1 ATTRIBUTES


=head2 FilterType => Str

  Specifies the type of filter rule pattern to apply. DataSync only
supports the SIMPLE_PATTERN rule type.


=head2 Value => Str

  A pattern that defines the filter. The filter might include or exclude
files is a transfer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

