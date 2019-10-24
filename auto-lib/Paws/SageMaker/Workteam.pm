# Generated from default/object.tt
package Paws::SageMaker::Workteam;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SageMaker::Types qw/SageMaker_MemberDefinition SageMaker_NotificationConfiguration/;
  has CreateDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str, required => 1);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has MemberDefinitions => (is => 'ro', isa => ArrayRef[SageMaker_MemberDefinition], required => 1);
  has NotificationConfiguration => (is => 'ro', isa => SageMaker_NotificationConfiguration);
  has ProductListingIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubDomain => (is => 'ro', isa => Str);
  has WorkteamArn => (is => 'ro', isa => Str, required => 1);
  has WorkteamName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProductListingIds' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'NotificationConfiguration' => {
                                                'class' => 'Paws::SageMaker::NotificationConfiguration',
                                                'type' => 'SageMaker_NotificationConfiguration'
                                              },
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'SubDomain' => {
                                'type' => 'Str'
                              },
               'WorkteamArn' => {
                                  'type' => 'Str'
                                },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'MemberDefinitions' => {
                                        'class' => 'Paws::SageMaker::MemberDefinition',
                                        'type' => 'ArrayRef[SageMaker_MemberDefinition]'
                                      },
               'WorkteamName' => {
                                   'type' => 'Str'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'MemberDefinitions' => 1,
                    'WorkteamName' => 1,
                    'WorkteamArn' => 1,
                    'Description' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Workteam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Workteam object:

  $service_obj->Method(Att1 => { CreateDate => $value, ..., WorkteamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Workteam object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateDate

=head1 DESCRIPTION

Provides details about a labeling work team.

=head1 ATTRIBUTES


=head2 CreateDate => Str

  The date and time that the work team was created (timestamp).


=head2 B<REQUIRED> Description => Str

  A description of the work team.


=head2 LastUpdatedDate => Str

  The date and time that the work team was last updated (timestamp).


=head2 B<REQUIRED> MemberDefinitions => ArrayRef[SageMaker_MemberDefinition]

  The Amazon Cognito user groups that make up the work team.


=head2 NotificationConfiguration => SageMaker_NotificationConfiguration

  


=head2 ProductListingIds => ArrayRef[Str|Undef]

  The Amazon Marketplace identifier for a vendor's work team.


=head2 SubDomain => Str

  The URI of the labeling job's user interface. Workers open this URI to
start labeling your data objects.


=head2 B<REQUIRED> WorkteamArn => Str

  The Amazon Resource Name (ARN) that identifies the work team.


=head2 B<REQUIRED> WorkteamName => Str

  The name of the work team.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

