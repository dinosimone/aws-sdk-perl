# Generated from callresult_class.tt

package Paws::ELBv2::ModifyTargetGroupOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_TargetGroup/;
  has TargetGroups => (is => 'ro', isa => ArrayRef[ELBv2_TargetGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetGroups' => {
                                   'class' => 'Paws::ELBv2::TargetGroup',
                                   'type' => 'ArrayRef[ELBv2_TargetGroup]'
                                 },
               '_request_id' => {
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

Paws::ELBv2::ModifyTargetGroupOutput

=head1 ATTRIBUTES


=head2 TargetGroups => ArrayRef[ELBv2_TargetGroup]

Information about the modified target group.


=head2 _request_id => Str


=cut

