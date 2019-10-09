
package Paws::S3::GetBucketAclOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Grant S3_Owner/;
  has Grants => (is => 'ro', isa => ArrayRef[S3_Grant]);
  has Owner => (is => 'ro', isa => S3_Owner);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Grants' => {
                             'class' => 'Paws::S3::Grant',
                             'type' => 'ArrayRef[S3_Grant]'
                           }
             },
  'NameInRequest' => {
                       'Grants' => 'AccessControlList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketAclOutput

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[S3_Grant]

A list of grants.



=head2 Owner => S3_Owner






=cut

