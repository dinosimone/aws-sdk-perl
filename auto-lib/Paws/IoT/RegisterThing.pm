
package Paws::IoT::RegisterThing;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_Parameters/;
  has Parameters => (is => 'ro', isa => IoT_Parameters, predicate => 1);
  has TemplateBody => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegisterThing');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/things');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::RegisterThingResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::IoT::Parameters',
                                 'type' => 'IoT_Parameters'
                               },
               'TemplateBody' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'Parameters' => 'parameters',
                       'TemplateBody' => 'templateBody'
                     },
  'IsRequired' => {
                    'TemplateBody' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterThing - Arguments for method RegisterThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method RegisterThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $RegisterThingResponse = $iot->RegisterThing(
      TemplateBody => 'MyTemplateBody',
      Parameters   => { 'MyParameter' => 'MyValue', },    # OPTIONAL
    );

    # Results:
    my $CertificatePem = $RegisterThingResponse->CertificatePem;
    my $ResourceArns   = $RegisterThingResponse->ResourceArns;

    # Returns a L<Paws::IoT::RegisterThingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/RegisterThing>

=head1 ATTRIBUTES


=head2 Parameters => IoT_Parameters

The parameters for provisioning a thing. See Programmatic Provisioning
(https://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html)
for more information.



=head2 B<REQUIRED> TemplateBody => Str

The provisioning template. See Programmatic Provisioning
(https://docs.aws.amazon.com/iot/latest/developerguide/programmatic-provisioning.html)
for more information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

