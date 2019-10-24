# Generated from json/callargs_class.tt

package Paws::Glue::PutDataCatalogEncryptionSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_DataCatalogEncryptionSettings/;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has DataCatalogEncryptionSettings => (is => 'ro', isa => Glue_DataCatalogEncryptionSettings, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutDataCatalogEncryptionSettings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::PutDataCatalogEncryptionSettingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataCatalogEncryptionSettings' => {
                                                    'class' => 'Paws::Glue::DataCatalogEncryptionSettings',
                                                    'type' => 'Glue_DataCatalogEncryptionSettings'
                                                  },
               'CatalogId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'DataCatalogEncryptionSettings' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutDataCatalogEncryptionSettings - Arguments for method PutDataCatalogEncryptionSettings on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDataCatalogEncryptionSettings on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method PutDataCatalogEncryptionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDataCatalogEncryptionSettings.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $PutDataCatalogEncryptionSettingsResponse =
      $glue->PutDataCatalogEncryptionSettings(
      DataCatalogEncryptionSettings => {
        ConnectionPasswordEncryption => {
          ReturnConnectionPasswordEncrypted => 1,
          AwsKmsKeyId => 'MyNameString',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        EncryptionAtRest => {
          CatalogEncryptionMode => 'DISABLED',      # values: DISABLED, SSE-KMS
          SseAwsKmsKeyId        => 'MyNameString',  # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/PutDataCatalogEncryptionSettings>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog for which to set the security configuration.
If none is provided, the AWS account ID is used by default.



=head2 B<REQUIRED> DataCatalogEncryptionSettings => Glue_DataCatalogEncryptionSettings

The security configuration to set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDataCatalogEncryptionSettings in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

