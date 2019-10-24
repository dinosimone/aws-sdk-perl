# Generated from default/object.tt
package Paws::AppSync::RelationalDatabaseDataSourceConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_RdsHttpEndpointConfig/;
  has RdsHttpEndpointConfig => (is => 'ro', isa => AppSync_RdsHttpEndpointConfig);
  has RelationalDatabaseSourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RdsHttpEndpointConfig' => {
                                            'class' => 'Paws::AppSync::RdsHttpEndpointConfig',
                                            'type' => 'AppSync_RdsHttpEndpointConfig'
                                          },
               'RelationalDatabaseSourceType' => {
                                                   'type' => 'Str'
                                                 }
             },
  'NameInRequest' => {
                       'RdsHttpEndpointConfig' => 'rdsHttpEndpointConfig',
                       'RelationalDatabaseSourceType' => 'relationalDatabaseSourceType'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::RelationalDatabaseDataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::RelationalDatabaseDataSourceConfig object:

  $service_obj->Method(Att1 => { RdsHttpEndpointConfig => $value, ..., RelationalDatabaseSourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::RelationalDatabaseDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->RdsHttpEndpointConfig

=head1 DESCRIPTION

Describes a relational database data source configuration.

=head1 ATTRIBUTES


=head2 RdsHttpEndpointConfig => AppSync_RdsHttpEndpointConfig

  Amazon RDS HTTP endpoint settings.


=head2 RelationalDatabaseSourceType => Str

  Source type for the relational database.

=over

=item *

B<RDS_HTTP_ENDPOINT>: The relational database source type is an Amazon
RDS HTTP endpoint.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

