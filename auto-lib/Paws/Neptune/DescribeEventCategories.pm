# Generated from callargs_class.tt

package Paws::Neptune::DescribeEventCategories;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[Neptune_Filter], predicate => 1);
  has SourceType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Neptune::EventCategoriesMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeEventCategoriesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filters' => {
                              'class' => 'Paws::Neptune::Filter',
                              'type' => 'ArrayRef[Neptune_Filter]'
                            },
               'SourceType' => {
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

Paws::Neptune::DescribeEventCategories - Arguments for method DescribeEventCategories on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $EventCategoriesMessage = $rds->DescribeEventCategories(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      SourceType => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EventCategoriesMapList =
      $EventCategoriesMessage->EventCategoriesMapList;

    # Returns a L<Paws::Neptune::EventCategoriesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEventCategories>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Neptune_Filter]

This parameter is not currently supported.



=head2 SourceType => Str

The type of source that is generating the events.

Valid values: db-instance | db-parameter-group | db-security-group |
db-snapshot




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventCategories in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

