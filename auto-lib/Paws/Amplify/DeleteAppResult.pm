
package Paws::Amplify::DeleteAppResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_App/;
  has App => (is => 'ro', isa => Amplify_App, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'App' => {
                          'class' => 'Paws::Amplify::App',
                          'type' => 'Amplify_App'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'App' => 'app'
                     },
  'IsRequired' => {
                    'App' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteAppResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Amplify_App




=head2 _request_id => Str


=cut

