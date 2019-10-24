# Generated from default/object.tt
package Paws::MachineLearning::RedshiftDataSpec;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw/MachineLearning_RedshiftDatabase MachineLearning_RedshiftDatabaseCredentials/;
  has DatabaseCredentials => (is => 'ro', isa => MachineLearning_RedshiftDatabaseCredentials, required => 1);
  has DatabaseInformation => (is => 'ro', isa => MachineLearning_RedshiftDatabase, required => 1);
  has DataRearrangement => (is => 'ro', isa => Str);
  has DataSchema => (is => 'ro', isa => Str);
  has DataSchemaUri => (is => 'ro', isa => Str);
  has S3StagingLocation => (is => 'ro', isa => Str, required => 1);
  has SelectSqlQuery => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataRearrangement' => {
                                        'type' => 'Str'
                                      },
               'DataSchemaUri' => {
                                    'type' => 'Str'
                                  },
               'DatabaseInformation' => {
                                          'class' => 'Paws::MachineLearning::RedshiftDatabase',
                                          'type' => 'MachineLearning_RedshiftDatabase'
                                        },
               'DataSchema' => {
                                 'type' => 'Str'
                               },
               'S3StagingLocation' => {
                                        'type' => 'Str'
                                      },
               'SelectSqlQuery' => {
                                     'type' => 'Str'
                                   },
               'DatabaseCredentials' => {
                                          'class' => 'Paws::MachineLearning::RedshiftDatabaseCredentials',
                                          'type' => 'MachineLearning_RedshiftDatabaseCredentials'
                                        }
             },
  'IsRequired' => {
                    'DatabaseInformation' => 1,
                    'S3StagingLocation' => 1,
                    'SelectSqlQuery' => 1,
                    'DatabaseCredentials' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RedshiftDataSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RedshiftDataSpec object:

  $service_obj->Method(Att1 => { DatabaseCredentials => $value, ..., SelectSqlQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RedshiftDataSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseCredentials

=head1 DESCRIPTION

Describes the data specification of an Amazon Redshift C<DataSource>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseCredentials => MachineLearning_RedshiftDatabaseCredentials

  Describes AWS Identity and Access Management (IAM) credentials that are
used connect to the Amazon Redshift database.


=head2 B<REQUIRED> DatabaseInformation => MachineLearning_RedshiftDatabase

  Describes the C<DatabaseName> and C<ClusterIdentifier> for an Amazon
Redshift C<DataSource>.


=head2 DataRearrangement => Str

  A JSON string that represents the splitting and rearrangement
processing to be applied to a C<DataSource>. If the
C<DataRearrangement> parameter is not provided, all of the input data
is used to create the C<Datasource>.

There are multiple parameters that control what data is used to create
a datasource:

=over

=item *

B<C<percentBegin>>

Use C<percentBegin> to indicate the beginning of the range of the data
used to create the Datasource. If you do not include C<percentBegin>
and C<percentEnd>, Amazon ML includes all of the data when creating the
datasource.

=item *

B<C<percentEnd>>

Use C<percentEnd> to indicate the end of the range of the data used to
create the Datasource. If you do not include C<percentBegin> and
C<percentEnd>, Amazon ML includes all of the data when creating the
datasource.

=item *

B<C<complement>>

The C<complement> parameter instructs Amazon ML to use the data that is
not included in the range of C<percentBegin> to C<percentEnd> to create
a datasource. The C<complement> parameter is useful if you need to
create complementary datasources for training and evaluation. To create
a complementary datasource, use the same values for C<percentBegin> and
C<percentEnd>, along with the C<complement> parameter.

For example, the following two datasources do not share any data, and
can be used to train and evaluate a model. The first datasource has 25
percent of the data, and the second one has 75 percent of the data.

Datasource for evaluation: C<{"splitting":{"percentBegin":0,
"percentEnd":25}}>

Datasource for training: C<{"splitting":{"percentBegin":0,
"percentEnd":25, "complement":"true"}}>

=item *

B<C<strategy>>

To change how Amazon ML splits the data for a datasource, use the
C<strategy> parameter.

The default value for the C<strategy> parameter is C<sequential>,
meaning that Amazon ML takes all of the data records between the
C<percentBegin> and C<percentEnd> parameters for the datasource, in the
order that the records appear in the input data.

The following two C<DataRearrangement> lines are examples of
sequentially ordered training and evaluation datasources:

Datasource for evaluation: C<{"splitting":{"percentBegin":70,
"percentEnd":100, "strategy":"sequential"}}>

Datasource for training: C<{"splitting":{"percentBegin":70,
"percentEnd":100, "strategy":"sequential", "complement":"true"}}>

To randomly split the input data into the proportions indicated by the
percentBegin and percentEnd parameters, set the C<strategy> parameter
to C<random> and provide a string that is used as the seed value for
the random data splitting (for example, you can use the S3 path to your
data as the random seed string). If you choose the random split
strategy, Amazon ML assigns each row of data a pseudo-random number
between 0 and 100, and then selects the rows that have an assigned
number between C<percentBegin> and C<percentEnd>. Pseudo-random numbers
are assigned using both the input seed string value and the byte offset
as a seed, so changing the data results in a different split. Any
existing ordering is preserved. The random splitting strategy ensures
that variables in the training and evaluation data are distributed
similarly. It is useful in the cases where the input data may have an
implicit sort order, which would otherwise result in training and
evaluation datasources containing non-similar data records.

The following two C<DataRearrangement> lines are examples of
non-sequentially ordered training and evaluation datasources:

Datasource for evaluation: C<{"splitting":{"percentBegin":70,
"percentEnd":100, "strategy":"random",
"randomSeed"="s3://my_s3_path/bucket/file.csv"}}>

Datasource for training: C<{"splitting":{"percentBegin":70,
"percentEnd":100, "strategy":"random",
"randomSeed"="s3://my_s3_path/bucket/file.csv", "complement":"true"}}>

=back



=head2 DataSchema => Str

  A JSON string that represents the schema for an Amazon Redshift
C<DataSource>. The C<DataSchema> defines the structure of the
observation data in the data file(s) referenced in the C<DataSource>.

A C<DataSchema> is not required if you specify a C<DataSchemaUri>.

Define your C<DataSchema> as a series of key-value pairs. C<attributes>
and C<excludedVariableNames> have an array of key-value pairs for their
value. Use the following format to define your C<DataSchema>.

{ "version": "1.0",

"recordAnnotationFieldName": "F1",

"recordWeightFieldName": "F2",

"targetFieldName": "F3",

"dataFormat": "CSV",

"dataFileContainsHeader": true,

"attributes": [

{ "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2",
"fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType":
"CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, {
"fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6",
"fieldType": "TEXT" }, { "fieldName": "F7", "fieldType":
"WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType":
"WEIGHTED_STRING_SEQUENCE" } ],

"excludedVariableNames": [ "F6" ] }


=head2 DataSchemaUri => Str

  Describes the schema location for an Amazon Redshift C<DataSource>.


=head2 B<REQUIRED> S3StagingLocation => Str

  Describes an Amazon S3 location to store the result set of the
C<SelectSqlQuery> query.


=head2 B<REQUIRED> SelectSqlQuery => Str

  Describes the SQL Query to execute on an Amazon Redshift database for
an Amazon Redshift C<DataSource>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

