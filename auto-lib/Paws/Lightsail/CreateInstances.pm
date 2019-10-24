# Generated from json/callargs_class.tt

package Paws::Lightsail::CreateInstances;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Lightsail::Types qw/Lightsail_Tag/;
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BlueprintId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BundleId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CustomImageName => (is => 'ro', isa => Str, predicate => 1);
  has InstanceNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has KeyPairName => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag], predicate => 1);
  has UserData => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInstances');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::CreateInstancesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BlueprintId' => {
                                  'type' => 'Str'
                                },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'UserData' => {
                               'type' => 'Str'
                             },
               'InstanceNames' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'KeyPairName' => {
                                  'type' => 'Str'
                                },
               'CustomImageName' => {
                                      'type' => 'Str'
                                    },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         }
             },
  'NameInRequest' => {
                       'BlueprintId' => 'blueprintId',
                       'BundleId' => 'bundleId',
                       'UserData' => 'userData',
                       'InstanceNames' => 'instanceNames',
                       'AvailabilityZone' => 'availabilityZone',
                       'KeyPairName' => 'keyPairName',
                       'CustomImageName' => 'customImageName',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'BlueprintId' => 1,
                    'BundleId' => 1,
                    'InstanceNames' => 1,
                    'AvailabilityZone' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstances - Arguments for method CreateInstances on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstances on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstances.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateInstancesResult = $lightsail->CreateInstances(
      AvailabilityZone => 'Mystring',
      BlueprintId      => 'MyNonEmptyString',
      BundleId         => 'MyNonEmptyString',
      InstanceNames    => [ 'Mystring', ... ],
      CustomImageName  => 'MyResourceName',      # OPTIONAL
      KeyPairName      => 'MyResourceName',      # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',                   # OPTIONAL
          Value => 'MyTagValue',                 # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      UserData => 'Mystring',                    # OPTIONAL
    );

    # Results:
    my $Operations = $CreateInstancesResult->Operations;

    # Returns a L<Paws::Lightsail::CreateInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone in which to create your instance. Use the
following format: C<us-east-2a> (case sensitive). You can get a list of
Availability Zones by using the get regions
(http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html)
operation. Be sure to add the C<include Availability Zones> parameter
to your request.



=head2 B<REQUIRED> BlueprintId => Str

The ID for a virtual private server image (e.g., C<app_wordpress_4_4>
or C<app_lamp_7_0>). Use the get blueprints operation to return a list
of available images (or I<blueprints>).



=head2 B<REQUIRED> BundleId => Str

The bundle of specification information for your virtual private server
(or I<instance>), including the pricing plan (e.g., C<micro_1_0>).



=head2 CustomImageName => Str

(Deprecated) The name for your custom image.

In releases prior to June 12, 2017, this parameter was ignored by the
API. It is now deprecated.



=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

The names to use for your new Lightsail instances. Separate multiple
values using quotation marks and commas, for example:
C<["MyFirstInstance","MySecondInstance"]>



=head2 KeyPairName => Str

The name of your key pair.



=head2 Tags => ArrayRef[Lightsail_Tag]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.



=head2 UserData => Str

A launch script you can create that configures a server with additional
user data. For example, you might want to run C<apt-get -y update>.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use C<yum>, Debian and
Ubuntu use C<apt-get>, and FreeBSD uses C<pkg>. For a complete list,
see the Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstances in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

