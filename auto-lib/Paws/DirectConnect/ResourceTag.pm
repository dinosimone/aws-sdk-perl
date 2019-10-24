# Generated from default/object.tt
package Paws::DirectConnect::ResourceTag;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has ResourceArn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DirectConnect::Tag',
                           'type' => 'ArrayRef[DirectConnect_Tag]'
                         }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ResourceTag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::ResourceTag object:

  $service_obj->Method(Att1 => { ResourceArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::ResourceTag object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceArn

=head1 DESCRIPTION

Information about a tag associated with an AWS Direct Connect resource.

=head1 ATTRIBUTES


=head2 ResourceArn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 Tags => ArrayRef[DirectConnect_Tag]

  The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

