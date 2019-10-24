# Generated from default/object.tt
package Paws::IoT::MetricValue;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Int/;
  use Paws::IoT::Types qw//;
  has Cidrs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Count => (is => 'ro', isa => Int);
  has Ports => (is => 'ro', isa => ArrayRef[Int]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ports' => {
                            'type' => 'ArrayRef[Int]'
                          },
               'Cidrs' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          },
               'Count' => {
                            'type' => 'Int'
                          }
             },
  'NameInRequest' => {
                       'Ports' => 'ports',
                       'Cidrs' => 'cidrs',
                       'Count' => 'count'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MetricValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MetricValue object:

  $service_obj->Method(Att1 => { Cidrs => $value, ..., Ports => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MetricValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidrs

=head1 DESCRIPTION

The value to be compared with the C<metric>.

=head1 ATTRIBUTES


=head2 Cidrs => ArrayRef[Str|Undef]

  If the C<comparisonOperator> calls for a set of CIDRs, use this to
specify that set to be compared with the C<metric>.


=head2 Count => Int

  If the C<comparisonOperator> calls for a numeric value, use this to
specify that numeric value to be compared with the C<metric>.


=head2 Ports => ArrayRef[Int]

  If the C<comparisonOperator> calls for a set of ports, use this to
specify that set to be compared with the C<metric>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

