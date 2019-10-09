
package Paws::S3::GetBucketCorsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_CORSRule/;
  has CORSRules => (is => 'ro', isa => ArrayRef[S3_CORSRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CORSRules' => {
                                'class' => 'Paws::S3::CORSRule',
                                'type' => 'ArrayRef[S3_CORSRule]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CORSRules' => 'CORSRule'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketCorsOutput

=head1 ATTRIBUTES


=head2 CORSRules => ArrayRef[S3_CORSRule]






=cut

