# Generated from default/object.tt
package Paws::Support::TrustedAdvisorResourcesSummary;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::Support::Types qw//;
  has ResourcesFlagged => (is => 'ro', isa => Int, required => 1);
  has ResourcesIgnored => (is => 'ro', isa => Int, required => 1);
  has ResourcesProcessed => (is => 'ro', isa => Int, required => 1);
  has ResourcesSuppressed => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourcesFlagged' => {
                                       'type' => 'Int'
                                     },
               'ResourcesProcessed' => {
                                         'type' => 'Int'
                                       },
               'ResourcesIgnored' => {
                                       'type' => 'Int'
                                     },
               'ResourcesSuppressed' => {
                                          'type' => 'Int'
                                        }
             },
  'NameInRequest' => {
                       'ResourcesFlagged' => 'resourcesFlagged',
                       'ResourcesProcessed' => 'resourcesProcessed',
                       'ResourcesIgnored' => 'resourcesIgnored',
                       'ResourcesSuppressed' => 'resourcesSuppressed'
                     },
  'IsRequired' => {
                    'ResourcesFlagged' => 1,
                    'ResourcesProcessed' => 1,
                    'ResourcesIgnored' => 1,
                    'ResourcesSuppressed' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorResourcesSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorResourcesSummary object:

  $service_obj->Method(Att1 => { ResourcesFlagged => $value, ..., ResourcesSuppressed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorResourcesSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourcesFlagged

=head1 DESCRIPTION

Details about AWS resources that were analyzed in a call to Trusted
Advisor DescribeTrustedAdvisorCheckSummaries.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourcesFlagged => Int

  The number of AWS resources that were flagged (listed) by the Trusted
Advisor check.


=head2 B<REQUIRED> ResourcesIgnored => Int

  The number of AWS resources ignored by Trusted Advisor because
information was unavailable.


=head2 B<REQUIRED> ResourcesProcessed => Int

  The number of AWS resources that were analyzed by the Trusted Advisor
check.


=head2 B<REQUIRED> ResourcesSuppressed => Int

  The number of AWS resources ignored by Trusted Advisor because they
were marked as suppressed by the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

