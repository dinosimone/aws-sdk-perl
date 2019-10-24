package Paws::LexRuntime::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type LexRuntime_BadGatewayException, { class => 'Paws::LexRuntime::BadGatewayException' };
  class_type LexRuntime_BadRequestException, { class => 'Paws::LexRuntime::BadRequestException' };
  class_type LexRuntime_Button, { class => 'Paws::LexRuntime::Button' };
  class_type LexRuntime_ConflictException, { class => 'Paws::LexRuntime::ConflictException' };
  class_type LexRuntime_DependencyFailedException, { class => 'Paws::LexRuntime::DependencyFailedException' };
  class_type LexRuntime_GenericAttachment, { class => 'Paws::LexRuntime::GenericAttachment' };
  class_type LexRuntime_InternalFailureException, { class => 'Paws::LexRuntime::InternalFailureException' };
  class_type LexRuntime_LimitExceededException, { class => 'Paws::LexRuntime::LimitExceededException' };
  class_type LexRuntime_LoopDetectedException, { class => 'Paws::LexRuntime::LoopDetectedException' };
  class_type LexRuntime_NotAcceptableException, { class => 'Paws::LexRuntime::NotAcceptableException' };
  class_type LexRuntime_NotFoundException, { class => 'Paws::LexRuntime::NotFoundException' };
  class_type LexRuntime_PostContentRequest, { class => 'Paws::LexRuntime::PostContentRequest' };
  class_type LexRuntime_PostContentResponse, { class => 'Paws::LexRuntime::PostContentResponse' };
  class_type LexRuntime_PostTextRequest, { class => 'Paws::LexRuntime::PostTextRequest' };
  class_type LexRuntime_PostTextResponse, { class => 'Paws::LexRuntime::PostTextResponse' };
  class_type LexRuntime_RequestTimeoutException, { class => 'Paws::LexRuntime::RequestTimeoutException' };
  class_type LexRuntime_ResponseCard, { class => 'Paws::LexRuntime::ResponseCard' };
  class_type LexRuntime_StringMap, { class => 'Paws::LexRuntime::StringMap' };
  class_type LexRuntime_UnsupportedMediaTypeException, { class => 'Paws::LexRuntime::UnsupportedMediaTypeException' };

1;
