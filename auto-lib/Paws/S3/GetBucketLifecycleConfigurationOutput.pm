
package Paws::S3::GetBucketLifecycleConfigurationOutput;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::LifecycleRule]', traits => ['NameInRequest'], request_name => 'Rule');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLifecycleConfigurationOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::S3::LifecycleRule>]

Container for a lifecycle rule.




=cut

