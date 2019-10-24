# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AdminListDevicesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_DeviceType/;
  has Devices => (is => 'ro', isa => ArrayRef[CognitoIdp_DeviceType]);
  has PaginationToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               'Devices' => {
                              'class' => 'Paws::CognitoIdp::DeviceType',
                              'type' => 'ArrayRef[CognitoIdp_DeviceType]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[CognitoIdp_DeviceType]

The devices in the list of devices response.


=head2 PaginationToken => Str

The pagination token.


=head2 _request_id => Str


=cut

1;