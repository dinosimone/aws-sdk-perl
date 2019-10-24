
package Paws::EC2::DescribeRegionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_Region/;
  has Regions => (is => 'ro', isa => ArrayRef[EC2_Region]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Regions' => {
                              'class' => 'Paws::EC2::Region',
                              'type' => 'ArrayRef[EC2_Region]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Regions' => 'regionInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRegionsResult

=head1 ATTRIBUTES


=head2 Regions => ArrayRef[EC2_Region]

Information about the Regions.


=head2 _request_id => Str


=cut

