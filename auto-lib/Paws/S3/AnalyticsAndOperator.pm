package Paws::S3::AnalyticsAndOperator;
  use Moose;
  has Prefix => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', request_name => 'Tag', request_name => 'Tag', traits => ['NameInRequest','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AnalyticsAndOperator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AnalyticsAndOperator object:

  $service_obj->Method(Att1 => { Prefix => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AnalyticsAndOperator object:

  $result = $service_obj->Method(...);
  $result->Att1->Prefix

=head1 DESCRIPTION

A conjunction (logical AND) of predicates, which is used in evaluating
a metrics filter. The operator must have at least two predicates in any
combination, and an object must match all of the predicates for the
filter to apply.

=head1 ATTRIBUTES


=head2 Prefix => Str

  The prefix to use when evaluating an AND predicate: The prefix that an
object must have to be included in the metrics results.


=head2 Tags => ArrayRef[L<Paws::S3::Tag>]

  The list of tags to use when evaluating an AND predicate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

