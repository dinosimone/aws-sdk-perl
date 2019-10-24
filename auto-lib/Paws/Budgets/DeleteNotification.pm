# Generated from json/callargs_class.tt

package Paws::Budgets::DeleteNotification;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Budgets::Types qw/Budgets_Notification/;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BudgetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Notification => (is => 'ro', isa => Budgets_Notification, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteNotification');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Budgets::DeleteNotificationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Notification' => {
                                   'class' => 'Paws::Budgets::Notification',
                                   'type' => 'Budgets_Notification'
                                 },
               'BudgetName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'AccountId' => 1,
                    'Notification' => 1,
                    'BudgetName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DeleteNotification - Arguments for method DeleteNotification on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNotification on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DeleteNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNotification.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DeleteNotificationResponse = $budgets->DeleteNotification(
      AccountId    => 'MyAccountId',
      BudgetName   => 'MyBudgetName',
      Notification => {
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
        Threshold         => 1,           # max: 1000000000
        NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
        ThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DeleteNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose notification
you want to delete.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose notification you want to delete.



=head2 B<REQUIRED> Notification => Budgets_Notification

The notification that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNotification in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

