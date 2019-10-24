# Generated from callargs_class.tt

package Paws::ELBv2::RemoveTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELBv2::Types qw//;
  has ResourceArns => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ELBv2::RemoveTagsOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'RemoveTagsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceArns' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArns' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::RemoveTags - Arguments for method RemoveTags on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method RemoveTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To remove tags from a load balancer
    # This example removes the specified tags from the specified load balancer.
    my $RemoveTagsOutput = $elasticloadbalancing->RemoveTags(
      'ResourceArns' => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
      ],
      'TagKeys' => [ 'project', 'department' ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/RemoveTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the resource.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys for the tags to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTags in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

