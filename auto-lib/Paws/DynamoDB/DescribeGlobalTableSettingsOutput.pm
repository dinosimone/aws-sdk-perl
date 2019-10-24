# Generated from json/callresult_class.tt

package Paws::DynamoDB::DescribeGlobalTableSettingsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_ReplicaSettingsDescription/;
  has GlobalTableName => (is => 'ro', isa => Str);
  has ReplicaSettings => (is => 'ro', isa => ArrayRef[DynamoDB_ReplicaSettingsDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicaSettings' => {
                                      'class' => 'Paws::DynamoDB::ReplicaSettingsDescription',
                                      'type' => 'ArrayRef[DynamoDB_ReplicaSettingsDescription]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GlobalTableName' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableSettingsOutput

=head1 ATTRIBUTES


=head2 GlobalTableName => Str

The name of the global table.


=head2 ReplicaSettings => ArrayRef[DynamoDB_ReplicaSettingsDescription]

The Region-specific settings for the global table.


=head2 _request_id => Str


=cut

1;