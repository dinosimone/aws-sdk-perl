# Generated from json/callargs_class.tt

package Paws::Config::DeleteRetentionConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has RetentionConfigurationName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteRetentionConfiguration');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionConfigurationName' => {
                                                 'type' => 'Str'
                                               }
             },
  'IsRequired' => {
                    'RetentionConfigurationName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteRetentionConfiguration - Arguments for method DeleteRetentionConfiguration on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRetentionConfiguration on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteRetentionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRetentionConfiguration.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->DeleteRetentionConfiguration(
      RetentionConfigurationName => 'MyRetentionConfigurationName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteRetentionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RetentionConfigurationName => Str

The name of the retention configuration to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRetentionConfiguration in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

