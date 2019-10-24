# Generated from callargs_class.tt

package Paws::SNS::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SNS::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SNS::UntagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'UntagResourceResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::UntagResource - Arguments for method UntagResource on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $UntagResourceResponse = $sns->UntagResource(
      ResourceArn => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the topic from which to remove tags.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The list of tag keys to remove from the specified topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

