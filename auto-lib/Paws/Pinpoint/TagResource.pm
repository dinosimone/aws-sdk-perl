
package Paws::Pinpoint::TagResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_TagsModel/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagsModel => (is => 'ro', isa => Pinpoint_TagsModel, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TagsModel');
  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/tags/{resource-arn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagsModel' => {
                                'class' => 'Paws::Pinpoint::TagsModel',
                                'type' => 'Pinpoint_TagsModel'
                              },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'ResourceArn' => 'resource-arn'
                  },
  'IsRequired' => {
                    'TagsModel' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TagResource - Arguments for method TagResource on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    $pinpoint->TagResource(
      ResourceArn => 'My__string',
      TagsModel   => {
        Tags => { 'My__string' => 'My__string', },

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the application, campaign, or
segment.



=head2 B<REQUIRED> TagsModel => Pinpoint_TagsModel






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

