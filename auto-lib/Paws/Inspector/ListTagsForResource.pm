# Generated from json/callargs_class.tt

package Paws::Inspector::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Inspector::ListTagsForResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn'
                     },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # List tags for resource
    # Lists all tags associated with an assessment template.
    my $ListTagsForResourceResponse =
      $inspector->ListTagsForResource( 'ResourceArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-gcwFliYu'
      );

    # Results:
    my $tags = $ListTagsForResourceResponse->tags;

    # Returns a L<Paws::Inspector::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN that specifies the assessment template whose tags you want to
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

