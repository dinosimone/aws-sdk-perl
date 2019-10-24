# Generated from default/object.tt
package Paws::CodePipeline::JobDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_JobData/;
  has AccountId => (is => 'ro', isa => Str);
  has Data => (is => 'ro', isa => CodePipeline_JobData);
  has Id => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Data' => {
                           'class' => 'Paws::CodePipeline::JobData',
                           'type' => 'CodePipeline_JobData'
                         }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'AccountId' => 'accountId',
                       'Data' => 'data'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::JobDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::JobDetails object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::JobDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Represents information about the details of a job.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID associated with the job.


=head2 Data => CodePipeline_JobData

  Represents additional information about a job required for a job worker
to complete the job.


=head2 Id => Str

  The unique system-generated ID of the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

