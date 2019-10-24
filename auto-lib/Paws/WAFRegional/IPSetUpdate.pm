# Generated from default/object.tt
package Paws::WAFRegional::IPSetUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_IPSetDescriptor/;
  has Action => (is => 'ro', isa => Str, required => 1);
  has IPSetDescriptor => (is => 'ro', isa => WAFRegional_IPSetDescriptor, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Action' => {
                             'type' => 'Str'
                           },
               'IPSetDescriptor' => {
                                      'class' => 'Paws::WAFRegional::IPSetDescriptor',
                                      'type' => 'WAFRegional_IPSetDescriptor'
                                    }
             },
  'IsRequired' => {
                    'Action' => 1,
                    'IPSetDescriptor' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::IPSetUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::IPSetUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., IPSetDescriptor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::IPSetUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the type of update to perform to an IPSet with UpdateIPSet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specifies whether to insert or delete an IP address with UpdateIPSet.


=head2 B<REQUIRED> IPSetDescriptor => WAFRegional_IPSetDescriptor

  The IP address type (C<IPV4> or C<IPV6>) and the IP address range (in
CIDR notation) that web requests originate from.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

