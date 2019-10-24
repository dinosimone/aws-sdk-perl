# Generated from callresult_class.tt

package Paws::AutoScaling::LaunchConfigurationsType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_LaunchConfiguration/;
  has LaunchConfigurations => (is => 'ro', isa => ArrayRef[AutoScaling_LaunchConfiguration], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'LaunchConfigurations' => {
                                           'class' => 'Paws::AutoScaling::LaunchConfiguration',
                                           'type' => 'ArrayRef[AutoScaling_LaunchConfiguration]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'LaunchConfigurations' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchConfigurationsType

=head1 ATTRIBUTES


=head2 B<REQUIRED> LaunchConfigurations => ArrayRef[AutoScaling_LaunchConfiguration]

The launch configurations.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

