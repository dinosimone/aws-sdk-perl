
package Paws::LexModels::GetBot;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VersionOrAlias => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetBot');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/bots/{name}/versions/{versionoralias}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LexModels::GetBotResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VersionOrAlias' => {
                                     'type' => 'Str'
                                   },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'VersionOrAlias' => 'versionoralias',
                    'Name' => 'name'
                  },
  'IsRequired' => {
                    'VersionOrAlias' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBot - Arguments for method GetBot on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBot on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBot.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotResponse = $models . lex->GetBot(
      Name           => 'MyBotName',
      VersionOrAlias => 'MyString',

    );

    # Results:
    my $AbortStatement          = $GetBotResponse->AbortStatement;
    my $Checksum                = $GetBotResponse->Checksum;
    my $ChildDirected           = $GetBotResponse->ChildDirected;
    my $ClarificationPrompt     = $GetBotResponse->ClarificationPrompt;
    my $CreatedDate             = $GetBotResponse->CreatedDate;
    my $Description             = $GetBotResponse->Description;
    my $FailureReason           = $GetBotResponse->FailureReason;
    my $IdleSessionTTLInSeconds = $GetBotResponse->IdleSessionTTLInSeconds;
    my $Intents                 = $GetBotResponse->Intents;
    my $LastUpdatedDate         = $GetBotResponse->LastUpdatedDate;
    my $Locale                  = $GetBotResponse->Locale;
    my $Name                    = $GetBotResponse->Name;
    my $Status                  = $GetBotResponse->Status;
    my $Version                 = $GetBotResponse->Version;
    my $VoiceId                 = $GetBotResponse->VoiceId;

    # Returns a L<Paws::LexModels::GetBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the bot. The name is case sensitive.



=head2 B<REQUIRED> VersionOrAlias => Str

The version or alias of the bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBot in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

