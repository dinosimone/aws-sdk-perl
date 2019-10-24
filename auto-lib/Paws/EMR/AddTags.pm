# Generated from json/callargs_class.tt

package Paws::EMR::AddTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_Tag/;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[EMR_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EMR::AddTagsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::EMR::Tag',
                           'type' => 'ArrayRef[EMR_Tag]'
                         }
             },
  'IsRequired' => {
                    'ResourceId' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::AddTags - Arguments for method AddTags on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $AddTagsOutput = $elasticmapreduce->AddTags(
      ResourceId => 'MyResourceId',
      Tags       => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/AddTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The Amazon EMR resource identifier to which tags will be added. This
value must be a cluster identifier.



=head2 B<REQUIRED> Tags => ArrayRef[EMR_Tag]

A list of tags to associate with a cluster and propagate to EC2
instances. Tags are user-defined key/value pairs that consist of a
required key string with a maximum of 128 characters, and an optional
value string with a maximum of 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

