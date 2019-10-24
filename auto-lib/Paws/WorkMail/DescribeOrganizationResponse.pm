# Generated from json/callresult_class.tt

package Paws::WorkMail::DescribeOrganizationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has Alias => (is => 'ro', isa => Str);
  has CompletedDate => (is => 'ro', isa => Str);
  has DefaultMailDomain => (is => 'ro', isa => Str);
  has DirectoryId => (is => 'ro', isa => Str);
  has DirectoryType => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has OrganizationId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationId' => {
                                     'type' => 'Str'
                                   },
               'DefaultMailDomain' => {
                                        'type' => 'Str'
                                      },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'State' => {
                            'type' => 'Str'
                          },
               'Alias' => {
                            'type' => 'Str'
                          },
               'CompletedDate' => {
                                    'type' => 'Str'
                                  },
               'DirectoryId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectoryType' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeOrganizationResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The alias for an organization.


=head2 CompletedDate => Str

The date at which the organization became usable in the WorkMail
context, in UNIX epoch time format.


=head2 DefaultMailDomain => Str

The default mail domain associated with the organization.


=head2 DirectoryId => Str

The identifier for the directory associated with an Amazon WorkMail
organization.


=head2 DirectoryType => Str

The type of directory associated with the WorkMail organization.


=head2 ErrorMessage => Str

(Optional) The error message indicating if unexpected behavior was
encountered with regards to the organization.


=head2 OrganizationId => Str

The identifier of an organization.


=head2 State => Str

The state of an organization.


=head2 _request_id => Str


=cut

1;